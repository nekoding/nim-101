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

#### Asynchronous


```
runForever: run event loop forever (usually used for server application that need stay alive)

waitFor: run event loop until specified future complete (usually used for application that need to quit after async process finished)

pool: listen for event for the specified time
```