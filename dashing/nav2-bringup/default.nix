
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-ros, launch-testing, ament-cmake-gtest, launch, nav2-common, navigation2, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-bringup";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_bringup/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "2b59497d789df84797c0ff9b1539cd1ad619b2e062f34c3f4325203aaa550dc2";
  };

  buildType = "ament_cmake";
  buildInputs = [ navigation2 launch-ros nav2-common ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ navigation2 launch-ros nav2-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Bringup scripts and configurations for the navigation2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}