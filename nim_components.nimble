# Package

version       = "0.1.0"
author        = "Igor Montagner"
description   = "Components for writing instructional materials"
license       = "MIT"
srcDir        = "src"
backend       = "js"

bin = @["nim_components"]


# Dependencies

requires "nim >= 2.0.0"

import os

before build:
  var s = ""
  for k in walkDir("./src/css"):
    echo k.path
    let cssFile = readFile(k.path)
    s.add cssFile

  writeFile("components.css", s)
