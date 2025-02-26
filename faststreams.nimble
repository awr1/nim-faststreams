mode = ScriptMode.Verbose

packageName   = "faststreams"
version       = "0.1.0"
author        = "Status Research & Development GmbH"
description   = "Nearly zero-overhead input/output streams for Nim"
license       = "Apache License 2.0"
skipDirs      = @["tests"]

requires "nim >= 0.17.0",
         "ranges",
         "std_shims"

task test, "Run tests":
  for filename in [
      "test_input_stream",
      "test_output_stream"
    ]:
      exec "nim c -r tests/" & filename
      rmFile "tests/" & filename

