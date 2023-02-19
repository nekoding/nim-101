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

