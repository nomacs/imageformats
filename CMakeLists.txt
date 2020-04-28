if(CMAKE_HOST_WIN32) # ubuntu 14.04 has cmake 2.8.12
    CMAKE_MINIMUM_REQUIRED(VERSION 3.0)
else()
    CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
endif()

PROJECT(imageformats)

# include macros needed
include("cmake/Utils.cmake")

OPTION (ENABLE_PSD "Enable PSD Plugin" ON)

# NMC_PREPARE_PLUGIN()
# NMC_FINDQT()
# NMC_FIND_OPENCV("core" "imgproc")

# set(BUILDING_MULTIPLE_PLUGINS true)

IF (ENABLE_PSD)
    add_subdirectory(libqpsd)
ENDIF(ENABLE_PSD)

