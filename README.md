# llir-process-rs

This is a LLVM IR Process library

- [x] parse llir
- [x] to json
- [ ] to sexpr
- [ ] ast

## 注意 | Notice

由于Json没有保序的Object，所以我目前全部使用`Array<[Key, Value]>`格式存放数据

## 示例 | Example

```sh
    llir_process ./demo.ir
    [print json]
```
