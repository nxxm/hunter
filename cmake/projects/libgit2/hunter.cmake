# Copyright (c) 2016-2017, Ruslan Baratov
# Copyright (c) 2017, David Hirvonen
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    libgit2
    VERSION
    1.1.0
    URL
    "https://github.com/libgit2/libgit2/releases/download/v1.1.0/libgit2-1.1.0.tar.gz"
    SHA1
    c699cf5cc50590b64db1b9b2ebef40273ccc0f7a
    )



hunter_cmake_args(libgit2 CMAKE_ARGS 
BUILD_CLAR=OFF 
BUILD_SHARED_LIBS=OFF	 
)


hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(libgit2)
hunter_download(PACKAGE_NAME libgit2)
