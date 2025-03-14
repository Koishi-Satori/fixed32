add_rules("mode.debug", "mode.release")

add_repositories("fixed32_repo fixed32_repo")

add_requires("papilio")
add_requires("boost 1.86.0")

set_warnings("all")
set_languages("cxx20")
add_cxxflags("-O3")

target("fixed32")
    set_kind("shared")
    add_includedirs("include", {public = true})
    add_files("src/*.cpp")
    add_packages("papilio", {public = true})
    add_packages("boost", {public = true})

includes("test")
includes("benchmark")
