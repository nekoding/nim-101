import json

type
    Message* = object
        username* :string
        message*: string

proc parseMessage*(data: string): Message = 
    let dataJson = parseJson(data)

    # keyword result otomatis dibikin oleh nim ketika procedure memiliki return type. jadi jangan dipake keyword ini untuk bikin variabel
    result.username = dataJson["username"].getStr()
    result.message = dataJson["message"].getStr()

proc createMessage*(username, message: string): string = 
    result = $(%{
        "username": %username,
        "message": %message
    }) & "\c\1" 
    # di nim concat string menggunakan keyword &
    # "\c\1" -> menambahkan carriage return line feed

# testing part
# ------------
# let data = """{"username": "enggar", "message": "hello world"}"""
# let parsedData = parseMessage(data)
# # echo parsedData
# doAssert parsedData.username == "enggar"
# doAssert parsedData.message == "hello world"

# echo "all test parsed"

# let username = "enggar"
# let message = "msg itu enak"

# let expectString = """{"username":"enggar","message":"msg itu enak"}""" & "\c\1"
# let chatMessages = createMessage(username, message)
# doAssert chatMessages == expectString