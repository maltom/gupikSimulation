//#include "../../common/jsonxx/jsonxx.h"
#include "trackBall.h"
#include <ignition/math/Vector3.hh>
#include <ros/ros.h>

#include <iostream>
#include <string>

namespace gazebo
{
  void trackBall::Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
  {
    // Store the pointer to the model
    this->robot = _parent;

    // Listen to the update event. This event is broadcast every
    // simulation iteration.
    this->updateConnection = event::Events::ConnectWorldUpdateBegin(
        std::bind(&trackBall::OnUpdate, this));
    this->trackBallSubscriber = trackBallSubscribingNode.subscribe("/gupik/position/trackBall", 1000, &trackBall::receivePose, this);
  }

  // Called by the world upda te start event
  void trackBall::OnUpdate()
  {
    ignition::math::Pose3d newPosition{x, y, z, 0.0, 0.0, 0.0};
    this->robot->SetWorldPose(newPosition);
  }

  void trackBall::receivePose(const geometry_msgs::Point &newPose)
  {
    this->x = newPose.x;
    this->y = -newPose.y;
    this->z = -newPose.z;
  }

} // namespace gazebo