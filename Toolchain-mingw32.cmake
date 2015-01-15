# the name of the target operating system
set(CMAKE_SYSTEM_NAME Windows)

# You can get a MinGW environment using the script at <http://mxe.cc>.
# It downloads and builds MinGW and most of the dependencies for you.
# You can use the toolchain file generated by MXE called `mxe-conf.cmake'
# or you can use this file by adjusting the above and following paths.
set(CMAKE_C_COMPILER i686-pc-mingw32-gcc)
set(CMAKE_CXX_COMPILER i686-pc-mingw32-g++)
set(CMAKE_RC_COMPILER i686-pc-mingw32-windres)
set(CMAKE_FIND_ROOT_PATH i686-pc-mingw32)

# Adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search
# programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
# Tell pkg-config not to look at the target environment's .pc files.
# Setting PKG_CONFIG_LIBDIR sets the default search directory, but we have to
# set PKG_CONFIG_PATH as well to prevent pkg-config falling back to the host's
# path.
set(ENV{PKG_CONFIG_LIBDIR} ${CMAKE_FIND_ROOT_PATH}/lib/pkgconfig)
set(ENV{PKG_CONFIG_PATH} ${CMAKE_FIND_ROOT_PATH}/lib/pkgconfig)
set(ENV{MINGDIR} ${CMAKE_FIND_ROOT_PATH}) 
