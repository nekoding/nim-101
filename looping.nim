var i = 0
while i < 10:
    echo i
    i.inc

for i in 0..<10:
    echo i


block testLoop:
    var i = 0
    while true:
        echo i
        i.inc
        if i > 5: break testLoop

# multi block
block a:
    var x = 0
    var y = 0

    while true:
        x.inc
        if x mod 2 == 0: y.inc
        block b:
            for z in 1..10:
                echo x, y, z
                if z == 5:
                    break b
        break a