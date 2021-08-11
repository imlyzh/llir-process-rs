use crate::to_json::{ToJson, output_filter};

mod ast;
mod parser;
mod to_json;

fn main() {
    let src = include_str!("./demo.ir");
    let r = parser::parse(src).unwrap();
    let json = r.to_json();
    let json = output_filter(json);
    println!("output json:\n{}", json.to_string());
}
