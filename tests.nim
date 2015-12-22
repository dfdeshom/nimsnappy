import snappy
import unittest

var input = readFile("snappy.nim")

test "compressing a string works":
  var compressed = snappy.compress(input)
  var uncompressed = snappy.uncompress(compressed)
  check(uncompressed==input)
