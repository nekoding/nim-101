import os, threadpool
echo "chat app started"

if paramCount() == 0:
    quit("Please specify the server address, ex: ./client localhost")

let serverAddr = paramStr(1)
echo("connecting to ", serverAddr)

while true:
    # spawn = spawn new thread / create new thread to process input data and separate from main thread or it can call parallelism

    let message = spawn stdin.readLine()
    
    # keyword ^ used for retrieved value from a FlowVar[T] -> it will block the current thread until `message` return data from another thread
    echo("sending \"", ^message, "\"")
    