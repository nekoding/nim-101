proc helloWorld(): string = "Hello world"
echo helloWorld()

# hasilnya 10
proc exampleMultiOperation(): int = 
    let data = [1,2,3,4,5]
    var results: int
    for i in data:
        results += i
    return results
    
# hasilanya 10
proc exampleMultiOperationA(): int = 
    let data = [1,2,3,4,5]
    var res: int
    for i in data:
        res += i
    res

# hasilnya 0
proc exampleMultiOperationB(): int = 
    let data = [1,2,3,4,5]
    var res: int
    for i in data:
        res += i

# return string kosong
proc exampleMultiOperationC(): string = 
    var data: string
    for i in 1..10:
        data.add($i)

# return string "12345678910"
proc exampleMultiOperationD(): string = 
    var data: string
    for i in 1..10:
        data.add($i)
    data

##[
    - Jika terkena `Shadowed` cukup ganti nama fungsi / variabelnya
    - Nim menggunakan implicit return
]##

echo exampleMultiOperation()
echo exampleMultiOperationA() 
echo exampleMultiOperationB()
echo exampleMultiOperationC()
echo exampleMultiOperationD()

    
# overloading : mengimplementasikan 2 prosedur atau lebih dengan nama yang sama tapi implementasinya berbeda

proc tambah(a: int, b: int): int = 
    a + b 

proc tambah(a: string, b: string): string = 
    a & b 

proc tambah(a: int, b: string): string = 
    $a & b 

proc tambah(a: string, b: int): string = 
    a & $b 

proc tambah(a: int): int = a + 10

echo tambah(1, 2) # 3
echo tambah("enggar", "tivandi") # enggartivandi
echo tambah(1, "john") # 1john
echo tambah("doe", 5) # doe5
echo tambah(15)

# anonymous function
let anonFunc = proc (): string = "Anonymous function di nim itu seperti ini"

echo anonFunc()

# IIFE (Immediately Invoked Function Expression)
echo (proc (): string = "Mantabbb")()

let x = [1,2,3,4,5]

echo x
echo @x

import sequtils, sugar
let a = @[1,2,3,4,5,6,7,8,9]
let filteredA = filter(a, proc (i: int): bool = i mod 2 != 0) 
let filteredAF = filter(a, (i: int) -> bool => i mod 2 != 0)

echo filteredA
echo filteredAF