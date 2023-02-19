type 
    Person = object
        name: string
        age: uint

var p: Person
echo p

var x: Person = Person(
    name: "Enggar",
    age: 100
)

echo x
echo x.name

# ref : pass by reference
# secara default ketika melakukan passing argument yang dioper adalah nilainya jadi kita tidak bisa melakukan perubahan pada object yang dioper. agar bisa melakukan perubahan gunakan keyword ref agar menjadi pass by reference
type
    Example = object 
        data: string
    ExampleRef = ref Example # bentuk struktur data akan mengikuti struct Example

proc changeData(x: ExampleRef) = 
    x.data = "test ref"

#[
    proc changeData(x: Example) = 
        x.data = "test non-ref" -> ini akan error karena struct Example bukan reference / datanya immutable
]#

var test = ExampleRef(
    data: "hello world"
)

echo test.data
changeData(test)
echo test.data

#[
    Object = nominative typing (tergantung tipe object / jika nilainya sama tapi objectnya beda dianggap beda)
    Tuple = structural typing (tergantung struktur tipe object / jika nilainya sama tapi objectnya beda dianggap sama)
]#
type
    Dog = tuple
        name: string
    Cat = tuple
        name: string

let dog: Dog = (name: "Axel")
let cat: Cat = (name: "Zeta")

echo dog
echo cat
echo dog.name
echo cat.name
echo dog == cat

# enum
type
    Color = enum
        red
        blue
        green

let c: Color = red
echo c
echo c == Color.blue

type 
    BloodType {.pure.} = enum 
        a, b, ab, o

let myBlood: BloodType = BloodType.a
echo myBlood