
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, std-srvs, ament-cmake, launch-ros, ament-lint-common, rclpy, geometry-msgs, sensor-msgs, ament-cmake-gtest, gazebo-dev, rclcpp, tinyxml-vendor, std-msgs, ament-lint-auto, gazebo-msgs }:
buildRosPackage {
  pname = "ros-dashing-gazebo-ros";
  version = "3.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/dashing/gazebo_ros/3.3.4-1.tar.gz";
    name = "3.3.4-1.tar.gz";
    sha256 = "709bc65568e54e83980d0c32884fef85f01dd325374ff171df586aae12e70329";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces std-srvs rclpy gazebo-dev rclcpp tinyxml-vendor gazebo-msgs ];
  checkInputs = [ ament-lint-common sensor-msgs ament-cmake-gtest std-msgs ament-lint-auto geometry-msgs ];
  propagatedBuildInputs = [ builtin-interfaces std-srvs launch-ros geometry-msgs rclpy sensor-msgs gazebo-dev rclcpp tinyxml-vendor gazebo-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Utilities to interface with <a href="http://gazebosim.org">Gazebo</a> through ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}