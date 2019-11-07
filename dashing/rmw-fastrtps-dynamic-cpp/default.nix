
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rcpputils, ament-cmake, ament-lint-common, fastrtps, rmw-fastrtps-shared-cpp, rosidl-typesupport-introspection-c, rosidl-typesupport-fastrtps-c, rosidl-typesupport-introspection-cpp, ament-cmake-ros, rosidl-typesupport-fastrtps-cpp, fastcdr, ament-lint-auto, rcutils, fastrtps-cmake-module, rmw, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-dashing-rmw-fastrtps-dynamic-cpp";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/dashing/rmw_fastrtps_dynamic_cpp/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "b26142e34a61c6030a0ad8e412a955623b324c73b4892a565f04b1861f06f907";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcpputils fastrtps rmw-fastrtps-shared-cpp rosidl-typesupport-introspection-c rosidl-typesupport-fastrtps-c rosidl-typesupport-introspection-cpp rosidl-typesupport-fastrtps-cpp fastcdr rcutils fastrtps-cmake-module rmw rosidl-generator-c ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcpputils ament-cmake fastrtps rmw-fastrtps-shared-cpp rosidl-typesupport-introspection-c rosidl-typesupport-fastrtps-c rosidl-typesupport-introspection-cpp rosidl-typesupport-fastrtps-cpp fastcdr rcutils fastrtps-cmake-module rmw rosidl-generator-c ];
  nativeBuildInputs = [ fastrtps-cmake-module ament-cmake-ros ];

  meta = {
    description = ''Implement the ROS middleware interface using eProsima FastRTPS  static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}