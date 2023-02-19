### Compile

```sh
nim c [file].nim
```

### Compile and Run

```sh
nim c -r [file].nim
```

### Info

#### Module

Untuk membuat module cukup tambahkan keyword `*` di akhir variabel, procedure, object / yang lain.

```nim
var x* = "test"
proc helloWorld*() = echo "hello world"

type
    Person* = object
        name* : string
        age* : uint

```