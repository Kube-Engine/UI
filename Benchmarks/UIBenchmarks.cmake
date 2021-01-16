project(KubeUIBenchmarks)

get_filename_component(KubeUIBenchmarksDir ${CMAKE_CURRENT_LIST_FILE} PATH)

set(KubeUIBenchmarksSources
    ${KubeUIBenchmarksDir}/Main.cpp
)

add_executable(${CMAKE_PROJECT_NAME} ${KubeUIBenchmarksSources})

target_link_libraries(${CMAKE_PROJECT_NAME}
PUBLIC
    KubeUI
    benchmark::benchmark
)