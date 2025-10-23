# Steps to reproduce

## In umbrella root
```
mix compile --warnings-as-errors
==> failing_app
    warning: Foo.non_existing_function/0 is undefined (module Foo is not available or is yet to be defined). Make sure the module name is correct and has been specified in full (or that an alias has been defined)
    │
  3 │     Foo.non_existing_function()
    │         ~
    │
    └─ (failing_app 0.1.0) lib/failing_app.ex:3:9: FailingApp.hello/0
# exit code: 0
```

---

## In the children app
```
cd apps/failing_app
mix compile --warnings-as-errors
    warning: Foo.non_existing_function/0 is undefined (module Foo is not available or is yet to be defined). Make sure the module name is correct and has been specified in full (or that an alias has been defined)
    │
  3 │     Foo.non_existing_function()
    │         ~
    │
    └─ lib/failing_app.ex:3:9: FailingApp.hello/0

Compilation failed due to warnings while using the --warnings-as-errors option
# exit code: 1
```

---

## My versions
```bash
elixir -v
# Erlang/OTP 28 [erts-16.1] [source] [64-bit] [smp:10:10] [ds:10:10:10] [async-threads:1] [jit]
# Elixir 1.19.1 (compiled with Erlang/OTP 28)
# macOS Tahoe 26.0.1 (25A362) on MacBook Pro 16-inch, 2021 M1 Max
```
