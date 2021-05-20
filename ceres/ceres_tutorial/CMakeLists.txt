cmake_minimum_required(VERSION 2.8)
project(ceres_tutorial)

set(CMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_FLAGS "-std=c++11 -O3")

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

# Ceres
find_package(Ceres REQUIRED)
include_directories(${CERES_INCLUDE_DIRS})

add_executable(helloceres helloceres.cpp)
target_link_libraries(helloceres ${CERES_LIBRARIES})

add_executable(helloceres_numeric_diff helloceres_numeric_diff.cpp)
target_link_libraries(helloceres_numeric_diff ${CERES_LIBRARIES})

add_executable(helloceres_analytic_diff helloceres_analytic_diff.cpp)
target_link_libraries(helloceres_analytic_diff ${CERES_LIBRARIES})

add_executable(powell powell.cpp)
target_link_libraries(powell ${CERES_LIBRARIES} ${GFLAGS_LIBRARIES})

add_executable(powell2 powell2.cpp)
target_link_libraries(powell2 ${CERES_LIBRARIES})

add_executable(curve_fitting curve_fitting.cpp)
target_link_libraries(curve_fitting ${CERES_LIBRARIES})

add_executable(curve_fitting_outlier curve_fitting_outlier.cpp)
target_link_libraries(curve_fitting_outlier ${CERES_LIBRARIES})

# add_executable(bundle_adjuster 
# bal_problem.cpp
# bundle_adjuster.cpp)
# target_link_libraries(bundle_adjuster ${CERES_LIBRARIES} ${GFLAGS_LIBRARIES})

