//#include "../../common/jsonxx/jsonxx.h"
#include "mainCamera.h"
#include <ignition/math/Vector3.hh>
#include <ros/ros.h>

#include <iostream>
#include <string>

namespace gazebo
{
  void gupikModel::Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
  {
    // Store the pointer to the model
    this->robot = _parent;

    this->leftThrusterServo = robot->GetJoint("pednik_bot_left_revolute");
    this->rightThrusterServo = robot->GetJoint("pednik_bot_right_revolute");

    // Listen to the update event. This event is broadcast every
    // simulation iteration.
    this->updateConnection = event::Events::ConnectWorldUpdateBegin(
        std::bind(&gupikModel::OnUpdate, this));
    this->gupikSubsciber = gupikSubscribingNode.subscribe("/gupik/position/rovPose", 1000, &gupikModel::receivePose, this);
    this->gupikAzimSubsciber = gupikSubscribingNode.subscribe("/gupik/position/thrusterPose", 1000, &gupikModel::receiveAzim, this);
    this->gupikFeedbackPublisher = gupikSubscribingNode.advertise<geometry_msgs::Twist>("/gupik/position/rov_fdbck", 1000);
  }

  // Called by the world upda te start event
  void gupikModel::OnUpdate()
  {
    ignition::math::Pose3d newPosition{x, y, z, roll, pitch, yaw};
    this->robot->SetWorldPose(newPosition);

    this->leftThrusterServo->SetPosition(0, this->leftThrusterAngle);
    this->rightThrusterServo->SetPosition(0, this->rightThrusterAngle);

    //updateFeedbackPose();

  }

  void gupikModel::receivePose(const geometry_msgs::Twist &newPose)
  {
    this->x = newPose.linear.x;
    this->y = -newPose.linear.y;
    this->z = -newPose.linear.z;
    this->roll = newPose.angular.x;
    this->pitch = -newPose.angular.y;
    this->yaw = -newPose.angular.z;
  }

  void gupikModel::updateFeedbackPose()
  {
    /*auto fdbck = this->robot->WorldPose();
    this->x = fdbck.Pos().X();
    this->y = -fdbck.Pos().Y();
    this->z = -fdbck.Pos().Z();
    this->roll = fdbck.Rot().Roll();
    this->pitch = -fdbck.Rot().Pitch();
    this->yaw = -fdbck.Rot().Yaw();*/
  }

  void gupikModel::receiveAzim(const geometry_msgs::Point &newPose)
  {
    this->leftThrusterAngle = -newPose.x;
    this->rightThrusterAngle = -newPose.y;
  }

} // namespace gazebo

