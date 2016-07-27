This class handles the allocation and reuse of multiple WriteStreams. It uses a single execute-around method, #writeWith:, which takes a block that it evaluates with a WriteStream.
