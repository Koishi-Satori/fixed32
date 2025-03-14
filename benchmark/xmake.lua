add_requires("benchmark")

target("fixed32.benchmark")
    set_kind("binary")
    add_includedirs(".", {public = true})
    add_files("./benchmark.cpp", "./bench.cpp")
    add_deps("fixed32")
    add_packages("benchmark")

target("double.benchmark")
    set_kind("binary")
    add_includedirs(".", {public = true})
    add_files("./double_bench.cpp", "./bench.cpp")
    add_deps("fixed32")
    add_packages("benchmark")
