# nimsnappy
Nim wrapper for the snappy compression library. Provides a high-level
interface to `snappy`

Example usage:

    import nimsnappy
    var input = readFile("LICENSE")
    var compress = compress(input)
    var decompress = uncompress(compress)
    echo(decompress==input)
