#!/bin/bash -e

## Dependency versions

v_sdk=9477386_latest
v_ndk=25.2.9519653
v_sdk_build_tools=33.0.2

v_lua=5.2.4
v_libass=0.17.1
v_harfbuzz=8.0.1
v_fribidi=1.0.13
v_freetype=2-13-0
v_mbedtls=3.4.0
v_libplacebo=5.264.1
v_dav1d=1.2.1
v_ffmpeg=6.0
v_mpv=0.36.0


## Dependency tree
# I would've used a dict but putting arrays in a dict is not a thing

dep_mbedtls=()
dep_dav1d=()
dep_ffmpeg=(mbedtls dav1d)
dep_freetype2=()
dep_fribidi=()
dep_harfbuzz=()
dep_libass=(freetype fribidi harfbuzz)
dep_lua=()
dep_shaderc=()
dep_libplacebo=(shaderc)
dep_mpv=(ffmpeg libass lua libplacebo)
dep_mpv_android=(mpv)

