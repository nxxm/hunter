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
    BoringSSL
    VERSION
    0.0.0
    URL
    "https://github.com/nxxm/boringssl/archive/nxxm-0.0.0-05dd18d0.tar.gz"
    SHA1
    346e06acaf58dda7f8a380cfb6fad78199a2d00f
    )


if (MSVC)
hunter_cmake_args(BoringSSL CMAKE_ARGS 
  OPENSSL_NO_ASM=YES  
  )
else()
  hunter_cmake_args(BoringSSL CMAKE_ARGS 
  OPENSSL_NO_ASM=YES  
  CMAKE_C_FLAGS=-pthread 
  CMAKE_CXX_FLAGS=-pthread
  )
endif()
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(BoringSSL)
hunter_download(PACKAGE_NAME BoringSSL)
