if(CMAKE_HOST_WIN32) # ubuntu 14.04 has cmake 2.8.12
    CMAKE_MINIMUM_REQUIRED(VERSION 3.0)
else()
    CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
endif()

PROJECT(imageformats)

# # include macros needed
# include("cmake/Utils.cmake")

OPTION (ENABLE_PSD "Enable PSD Plugin" ON)
OPTION (ENABLE_PCX "Enable PCX Plugin" ON)

# NMC_PREPARE_PLUGIN()
# NMC_FINDQT()
# NMC_FIND_OPENCV("core" "imgproc")

# set(BUILDING_MULTIPLE_PLUGINS true)

IF (ENABLE_PSD)
    add_subdirectory(libqpsd)
ENDIF(ENABLE_PSD)

IF (ENABLE_PCX)
    add_subdirectory(libqpcx)
ENDIF(ENABLE_PCX)


# status
MESSAGE(STATUS "")
MESSAGE(STATUS "----------------------------------------------------------------------------------")
MESSAGE(STATUS " ${PROJECT_NAME} for nomacs  <https://nomacs.org>")
MESSAGE(STATUS "")

IF(ENABLE_PSD)
    MESSAGE(STATUS " with PSD .................. YES")
ELSE()
    MESSAGE(STATUS " with PSD .................. NO")
ENDIF()

IF(ENABLE_PCX)
    MESSAGE(STATUS " with PCX .................. YES")
ELSE()
    MESSAGE(STATUS " with PCX .................. NO")
ENDIF()

MESSAGE(STATUS "----------------------------------------------------------------------------------")
