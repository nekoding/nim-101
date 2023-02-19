import asyncdispatch, sugar, asyncfile

var future = newFuture[int]()
doAssert(not future.finished)

# normal version
# future.callback = 
#     proc (future: Future[int]) =
#         echo "future is no longer empty", future.read

# using syntatix sugar version
future.callback = (f: Future[int]) => echo("future is no longer empty ", f.read)

future.complete(10)

# var file = openAsync("test.txt")
# let dataFut = file.readAll()
# dataFut.callback =
#     proc (future: Future[string]) =
#         echo(future.read())

# ref: https://github.com/nim-lang/Nim/issues/14564        
# addTimer(10000,false, proc(fd: AsyncFD) : bool =
#     echo "timer fired!"
#     return false
# )

# asyncdispatch.runForever()

proc readFiles() {.async.} =
    var file = openAsync("test.txt", fmRead)
    let data = await file.readAll()
    echo data
    file.close()

# wait process readFiles until finished
waitFor readFiles()
