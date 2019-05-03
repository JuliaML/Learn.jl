# Learn

[![Build Status](https://travis-ci.org/JuliaML/Learn.jl.svg?branch=master)](https://travis-ci.org/JuliaML/Learn.jl)

An all-in-one workbench, which simply imports and re-exports the packages below.  This is a convenience wrapper for an easy way to get started with the JuliaML ecosystem.

To get setup, this should be enough:

```
Pkg.clone("https://github.com/JuliaML/Learn.jl")
Pkg.build("Learn")
```

The build script will clone any repos which are not yet in METADATA and which you don't have local copies already installed.

Please note that this code is not currently updated to run on Julia Version 0.7 or newer. You will need to run it using Julia Version 0.6.
