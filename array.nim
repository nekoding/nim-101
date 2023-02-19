var arr: array[3, int]
echo arr # [0, 0, 0]

arr[0] = 1
arr[1] = 2
arr[2] = 3
# arr[4] = 3 -> it will error cause out of index

echo arr

var vtubers = ["kobo kaneru", "vestia zeta", "kaela kovalskia"]

for vtuber in vtubers:
    echo vtuber # return name

for vtuber in vtubers.low .. vtubers.high:
    echo vtuber # return index

for i, vtuber in vtubers:
    echo i, vtuber # return index,name

# vtubers.add("moona hoshinova") -> it will error because array is static size

# let hololives = @vtubers # it will error cause let keyword is immutable

# sequence = array with dynamic size
var hololives = @vtubers # -> change to sequence
hololives.add("moona hoshinova")
echo vtubers

var xyz: seq[int] = @[]
echo xyz
# echo xyz[0] # error index out of bound

# newSeq = sequence with optimization (use this if you know the size of sequence ahead)
var list = newSeq[string](3)
list[0] = "John"
list[1] = "doe"
list[2] = "alex"
# list[3] = "brian" -> error exception

echo list


# set : array with unique value (only number / char)
var exampleSets: set[int16]
echo exampleSets

var uniqueNum = {1,2,3,4,5,6,6,2}
echo uniqueNum

var uniqueChar = {'a', 'b', 'a', 'b', 'c'}
echo uniqueChar

# var uniqueString = {"enggar", "tivandi"} -> error

# hashSet: array with unique value (support string)
import std/sets

var duplicatedData = @["enggar", "enggar", "tivandi"]
var uniqueString: HashSet[string] = toHashSet(duplicatedData)
echo uniqueString
