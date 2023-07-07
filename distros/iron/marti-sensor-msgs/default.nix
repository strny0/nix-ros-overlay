
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-marti-sensor-msgs";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/iron/marti_sensor_msgs/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "2e7f8a1344591e5ae49647dda0fc3814c4c97feea68ba8937366ac7f5b59655e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_sensor_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}