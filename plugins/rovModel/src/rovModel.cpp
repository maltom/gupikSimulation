//#include "../../common/jsonxx/jsonxx.h"
#include "rovModel.h"
#include <ignition/math/Vector3.hh>

namespace gazebo
{
  void rovModel::Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
  {
    // Store the pointer to the model
    this->model = _parent;
    // Listen to the update event. This event is broadcast every
    // simulation iteration.
    this->updateConnection = event::Events::ConnectWorldUpdateBegin(
        std::bind(&rovModel::OnUpdate, this));
    this->rovSubsciber = rovSubscribingNode.subscribe("/turtle1/cmd_vel", 1000, &rovModel::receivePose, this);
  }

  // Called by the world upda te start event
  void rovModel::OnUpdate()
  {
    ignition::math::Pose3d newPosition{x, y, z, roll, pitch, yaw};
    this->model->SetWorldPose(newPosition);
  }

  void rovModel::receivePose(const geometry_msgs::Twist &newPose)
  {
    this->x = newPose.linear.x;
    this->y = newPose.linear.y;
    this->z = newPose.linear.z;
    this->roll = newPose.angular.x;
    this->pitch = newPose.angular.y;
    this->yaw = newPose.angular.z;
  }

} // namespace gazebo