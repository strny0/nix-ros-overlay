
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-warthog-msgs";
  version = "0.1.1-r2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/warthog-release/archive/release/melodic/warthog_msgs/0.1.1-2.tar.gz;
    sha256 = "babfd9ac89810b461c758964b130b80caf92655ba2aac79c7b70d6a232b5849c";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages exclusive to Warthog, especially for representing low-level motor commands and sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}