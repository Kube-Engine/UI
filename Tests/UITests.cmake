project(KubeUITests)

get_filename_component(KubeUITestsDir ${CMAKE_CURRENT_LIST_FILE} PATH)

set(KubeUITestsSources
    ${KubeUITestsDir}/tests_UI.cpp
)

add_executable(${CMAKE_PROJECT_NAME} ${KubeUITestsSources})

add_test(NAME ${CMAKE_PROJECT_NAME} COMMAND ${CMAKE_PROJECT_NAME})

target_link_libraries(${CMAKE_PROJECT_NAME}
PUBLIC
    KubeUI
    GTest::GTest GTest::Main
)

if(KF_COVERAGE)
    target_compile_options(${PROJECT_NAME} PUBLIC --coverage)
    target_link_options(${PROJECT_NAME} PUBLIC --coverage)
endif()