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
    "https://github.com/nxxm/libgit2/archive/feature/use_hunter_for_nxxm.tar.gz"
    SHA1
    5f5d0480f5d87da2d6cd04106a9fd3027a78d64f
    )



hunter_cmake_args(libgit2 CMAKE_ARGS 
BUILD_CLAR=OFF 
BUILD_SHARED_LIBS=OFF
USE_HTTPS=OFF 
)


hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(libgit2)
hunter_download(PACKAGE_NAME libgit2)
