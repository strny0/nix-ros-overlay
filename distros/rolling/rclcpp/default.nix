
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gmock, ament-cmake-google-benchmark, ament-cmake-gtest, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, builtin-interfaces, libstatistics-collector, mimick-vendor, performance-test-fixture, python3, rcl, rcl-interfaces, rcl-yaml-param-parser, rcpputils, rcutils, rmw, rmw-implementation-cmake, rosgraph-msgs, rosidl-default-generators, rosidl-runtime-cpp, rosidl-typesupport-c, rosidl-typesupport-cpp, statistics-msgs, test-msgs, tracetools }:
buildRosPackage {
  pname = "ros-rolling-rclcpp";
  version = "18.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/rolling/rclcpp/18.0.0-1.tar.gz";
    name = "18.0.0-1.tar.gz";
    sha256 = "b188e26a7cef94e4a49bd6ee189f6f37ccc074c01ccec1938193d18902990f3d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros python3 ];
  checkInputs = [ ament-cmake-gmock ament-cmake-google-benchmark ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor performance-test-fixture rmw rmw-implementation-cmake rosidl-default-generators test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp builtin-interfaces libstatistics-collector rcl rcl-interfaces rcl-yaml-param-parser rcpputils rcutils rmw rosgraph-msgs rosidl-runtime-cpp rosidl-typesupport-c rosidl-typesupport-cpp statistics-msgs tracetools ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros python3 ];

  meta = {
    description = ''The ROS client library in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}