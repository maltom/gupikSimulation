#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>

#include <geometry_msgs/Twist.h>
#include <std_msgs/Int64.h>
#include <ros/ros.h>

#pragma once

namespace gazebo
{
    class rovModel : public ModelPlugin
    {
    public:

        // public methods
        void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/);

        // Called by the world upda te start event
        void OnUpdate();

        void receivePose(const geometry_msgs::Twist &newPose);

        // Pointer to the model
    private:
        // private a
        physics::ModelPtr model;
        // Pointer to the update event connection
        event::ConnectionPtr updateConnection;

        ros::NodeHandle rovSubscribingNode;
        ros::Subscriber rovSubsciber;

        double x;
        double y;
        double z;
        double roll;
        double pitch;
        double yaw;
    };
    // Register this plugin with the simulator
    GZ_REGISTER_MODEL_PLUGIN(rovModel)
} // namespace gazebo