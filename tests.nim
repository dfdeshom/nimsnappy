import snappy
import unittest
import osproc

var input = readFile("snappy.nim")

suite "Snappy tests":
  
  setup:
    when not defined(windows):
      discard execCmdEx("dd if=/dev/urandom of=input.file bs=1M count=50")
      var input = readFile("input.file")

  tearDown:
    discard execCmdEx("rm input.file")

  test "Snappy compression and decompression is correct":
    var compressed = compress(input)
    var uncompressed = uncompress(compressed)
    check(uncompressed==input)
