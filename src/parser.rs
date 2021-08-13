

use pest::iterators::{Pair, Pairs};
use pest::{error::Error, Parser};
use pest_derive::*;

#[derive(Parser)]
#[grammar = "./debug.pest"]
// #[grammar = "./grammar.pest"]
struct Llir();

pub trait ParseFrom<T>
where
    Self: std::marker::Sized,
{
    fn parse_from(pair: Pair<T>) -> Self;
}


pub fn parse(i: &str) -> Result<Pairs<Rule>, Error<Rule>> {
    Llir::parse(Rule::Module, i)
}