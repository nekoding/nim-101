proc throwError() = 
    raise newException(IOError, "test error")

try:
    throwError()
except IOError:
    echo "ada error di io"

# mengambil message error
try:
    throwError()
except:
    echo getCurrentExceptionMsg() # test error
    