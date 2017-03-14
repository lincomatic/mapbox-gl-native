add_library(mbgl-core${MBGL_TARGET_SUFFIX} STATIC
    ${MBGL_CORE_FILES}
)

target_compile_options(mbgl-core${MBGL_TARGET_SUFFIX}
    PRIVATE -fPIC
    PRIVATE -fvisibility-inlines-hidden
)

target_include_directories(mbgl-core${MBGL_TARGET_SUFFIX}
    PUBLIC include
    PUBLIC src # TODO: make private
)

target_add_mason_package(mbgl-core${MBGL_TARGET_SUFFIX} PUBLIC geometry)
target_add_mason_package(mbgl-core${MBGL_TARGET_SUFFIX} PUBLIC variant)
target_add_mason_package(mbgl-core${MBGL_TARGET_SUFFIX} PUBLIC unique_resource)
target_add_mason_package(mbgl-core${MBGL_TARGET_SUFFIX} PRIVATE rapidjson)
target_add_mason_package(mbgl-core${MBGL_TARGET_SUFFIX} PRIVATE boost)
target_add_mason_package(mbgl-core${MBGL_TARGET_SUFFIX} PRIVATE geojson)
target_add_mason_package(mbgl-core${MBGL_TARGET_SUFFIX} PRIVATE geojsonvt)
target_add_mason_package(mbgl-core${MBGL_TARGET_SUFFIX} PRIVATE supercluster)
target_add_mason_package(mbgl-core${MBGL_TARGET_SUFFIX} PRIVATE kdbush)
target_add_mason_package(mbgl-core${MBGL_TARGET_SUFFIX} PRIVATE earcut)
target_add_mason_package(mbgl-core${MBGL_TARGET_SUFFIX} PRIVATE protozero)
target_add_mason_package(mbgl-core${MBGL_TARGET_SUFFIX} PRIVATE polylabel)

mbgl_platform_core()

create_source_groups(mbgl-core${MBGL_TARGET_SUFFIX})
target_append_xcconfig(mbgl-core${MBGL_TARGET_SUFFIX})
