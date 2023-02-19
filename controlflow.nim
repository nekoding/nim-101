const isTrue = true
const isFalse = false

if isTrue:
    echo "true kah mint?"
else:
    echo "false kah mint?"

if isFalse:
    echo "true kah mint?"
else:
    echo "false kah mint?"

let arr = [1,2,3,4,5]

for i in arr:
    if i mod 2 == 0:
        echo "genap"
    elif i mod 2 != 0 and i mod 3 == 0:
        echo "ganjil 3"
    else:
        echo "ganjil"
    
let alpha = "alpha"
case alpha
of "beta", "gamma", "zeta":
    echo 1
of "alpha", "epsilon":
    echo 2
else:
    echo "unknown"

let val = 200
case val
of 1..100:
    echo "angka ada di range 1-100"
of 101..200:
    echo "angka ada di range 101-200"
else:
    echo "diluar jangkauan"