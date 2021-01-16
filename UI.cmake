project(KubeUI)

get_filename_component(KubeUIDir ${CMAKE_CURRENT_LIST_FILE} PATH)

set(KubeUISources
    ${KubeUIDir}/Dummy.cpp
)

add_library(${PROJECT_NAME} ${KubeUISources})

target_link_libraries(${PROJECT_NAME}
PUBLIC
    KubeGraphics
)

if(${KF_TESTS})
    include(${KubeUIDir}/Tests/UITests.cmake)
endif()

if(${KF_BENCHMARKS})
    include(${KubeUIDir}/Benchmarks/UIBenchmarks.cmake)
endif()