use pest::iterators::{Pair, Pairs};
use crate::parser::Rule;
use serde_json::Value;

pub trait ToJson {
    fn to_json(self) -> Value;
}

impl ToJson for Pair<'_, Rule> {
    fn to_json(self) -> Value {
        let str = self.as_str();
        if !str.contains(" ") {
            return Value::String(str.to_string())
        }
        self.into_inner().to_json()
    }
}

impl ToJson for Pairs<'_, Rule> {
    fn to_json(self) -> Value {
        let r = self
        .map(|x| Value::Array(vec![
            Value::String(format!("{:?}", x.as_rule())),
            x.to_json()]));
        Value::Array(r.collect())
    }
}

/*
pub fn map_output_filter(i: Map<String, Value>) -> Map<String, Value> {
    i
    .into_iter()
    .filter(|(_, value)| value != &Value::Null)
    .filter(|(_, value)| if let Value::String(s) = value {
        s.len() > 0
    } else {
        true
    })
    .map(|(name, value)| (name, output_filter(value)))
    .collect()
}
// */

fn is_valid_pair(x: &Value) -> bool {
    if let Value::Array(x) = x {
        if x.len() != 2 {
            return true;
        }
        let first = x.first().unwrap();
        let last = x.last().unwrap();
        if !first.is_string() {
            return true;
        }
        if last.is_null() {
            return false;
        }
        if let Value::String(s) = last {
            if s.is_empty() {
                return false;
            }
        }
        true
    } else {
        true
    }
}

pub fn filter_pair(i: Vec<Value>) -> Vec<Value> {
    i
        .into_iter()
        .filter(is_valid_pair)
        .map(output_filter)
        .collect()
}

pub fn output_filter(i: Value) -> Value {
    match i {
        Value::Array(a) => if a.len() == 1 {
            output_filter(a.into_iter().next().unwrap())
        }  else {
            Value::Array(filter_pair(a))
        },
        // Value::Object(o) => Value::Object(map_output_filter(o)),
        _ => i
    }
}