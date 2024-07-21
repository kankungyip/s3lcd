# Create an INTERFACE library for our C module.
add_library(usermod_s3lcd INTERFACE)

# Add our source files to the lib
target_sources(usermod_s3lcd INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/src/s3lcd.c
    ${CMAKE_CURRENT_LIST_DIR}/src/s3lcd_i80_bus.c
    ${CMAKE_CURRENT_LIST_DIR}/src/s3lcd_spi_bus.c
    ${CMAKE_CURRENT_LIST_DIR}/src/mpfile.c
    ${CMAKE_CURRENT_LIST_DIR}/src/jpg/tjpgd.c
    ${CMAKE_CURRENT_LIST_DIR}/src/png/pngle.c
    ${CMAKE_CURRENT_LIST_DIR}/src/png/miniz.c
    ${CMAKE_CURRENT_LIST_DIR}/src/pngenc/adler32.c
    ${CMAKE_CURRENT_LIST_DIR}/src/pngenc/crc32.c
    ${CMAKE_CURRENT_LIST_DIR}/src/pngenc/deflate.c
    ${CMAKE_CURRENT_LIST_DIR}/src/pngenc/pngenc.c
    ${CMAKE_CURRENT_LIST_DIR}/src/pngenc/trees.c
    ${CMAKE_CURRENT_LIST_DIR}/src/pngenc/zutil.c
)

# Add the current directory as an include directory.
target_include_directories(usermod_s3lcd INTERFACE
    ${IDF_PATH}/components/esp_lcd/include/
    ${CMAKE_CURRENT_LIST_DIR}/src
)

# Link our INTERFACE library to the usermod target.
target_link_libraries(usermod INTERFACE usermod_s3lcd)
