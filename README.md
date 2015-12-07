# nimsnappy
Nim wrapper for the `snappy` compression library. there is also a high-level
API to for easy usage. The two functions exposed are `compress` and `uncompress`

Example usage:

    import nimsnappy
    var input = readFile("LICENSE")
    var compress = compress(input)
    var decompress = uncompress(compress)
    echo(decompress==input)
