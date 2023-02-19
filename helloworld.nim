import strutils

echo "hello world!"

echo "ini huruf kapital".toUpper()

var 
    helloWorld = "Hello world"

# Nim will be check first character, if first character is match / equal the rest it will ignores. even if it using underscore (case insentivity)

# Work version
echo helloWorld
echo hello_world
echo hello_World
echo helloworld
echo helloWORLD
echo hELLOWORLD
echo hElLOwOrLD
echo h_elloWorld

# Fail version
# echo hello__world -> it will fail cause double underscore
# echo HelloWorld -> it will fail cause first character using H not h

for i in 0..<10:
    echo i  # last number will be 9

for i in 0..10:
    echo i # last number will be 10

type
    Cat = object

proc meow(self: Cat) = echo "meoww...."

let koceng = Cat()
koceng.meow()

proc sayHello(name: string) = echo "Hello ", name

sayHello("enggar")
sayHello("kobo")

import sequtils, sugar

let 
    persons = ["Suharto suharto", "Sukarno sukarno", "Sukamto sukamto"]
    list = @persons

echo persons
echo list

# functional
persons.map((x: string) -> (string) => (x.split[0].toUpper)).echo

let res = list.map((x: string) -> (string) => (x.split[1].toLower))

echo res
echo res[0]

# procedural
for n in list:
    echo n.split[0].toUpper

# procedural
for n in persons:
    echo n.split[0].toUpper