
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-gtest, rosidl-cmake, rosidl-parser, ament-lint-auto, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-dashing-rosidl-generator-cpp";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_generator_cpp/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "a0a7d24922aa6e8188c67ecb7b0c4c84b4f29fc1aeee3a6bab2fbba08100a943";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-cmake-gtest rosidl-cmake ament-lint-auto rosidl-generator-c ];
  propagatedBuildInputs = [ rosidl-cmake rosidl-generator-c ament-cmake rosidl-parser ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}