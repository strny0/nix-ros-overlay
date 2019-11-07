
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-testing, rosidl-default-generators, ament-cmake-gtest, launch, std-msgs, ament-lint-auto, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-nav-2d-msgs";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav_2d_msgs/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "8e965004c922c0e1ef3b6a1fbf669392041ca7ea64bcf745cc27a7cce0ed4855";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs rosidl-default-generators geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ std-msgs rosidl-default-generators rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Basic message types for two dimensional navigation, extending from geometry_msgs::Pose2D.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}