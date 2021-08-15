// mod ast;
mod parser;
mod to_json;

use std::{env::args, io::Read};
use std::fs::File;
use crate::to_json::{ToJson, output_filter};

fn main() {
    let r: Vec<String> = args().collect();
    assert_eq!(r.len(), 2);
    let src_file_path = r.get(1).unwrap();
    let mut src_file = File::open(src_file_path).unwrap();
    let mut src = String::new();
    src_file.read_to_string(&mut src).unwrap();
    // let src = include_str!("./demo.ir");
    let r = parser::parse(&src).unwrap();
    let json = r.to_json();
    let json = output_filter(json);
    println!("{}", json);
}
