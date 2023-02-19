import asyncdispatch, asyncnet

type
    Client = ref object # -> set to referece so proc can modify the data
        socket: AsyncSocket
        netAddr: string
        id: int
        connected: bool

    Server = ref object
        socket: AsyncSocket
        clients: seq[Client]

proc newServer(): Server = 
    Server(socket: newAsyncSocket(), clients: @[])

proc `$`(client: Client): string = 
    $client.id & "(" & client.netAddr & ")"

proc processMessages(server: Server, client: Client) {.async.} =
    while true:
        let line = await client.socket.recvLine() # wait for a singleline to be read from client

        if line.len == 0:
            echo(client, " disconnected!")
            client.connected = false
            client.socket.close()
            return
        
        echo(client, " sent: ", line)

proc loop(server: Server, port = 6789) {.async.} =
    server.socket.bindAddr(port.Port)
    server.socket.listen()

    while true:
        let (netAddr, clientSocket) = await server.socket.acceptAddr()
        echo "Accepted connection from", netAddr

        let client = Client(
            socket: clientSocket,
            netAddr: netAddr,
            id: server.clients.len,
            connected: true
        )
        server.clients.add(client)
        asyncCheck processMessages(server, client)

var server = newServer()
waitFor loop(server)