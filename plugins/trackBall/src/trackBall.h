#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/Int64.h>
#include <ros/ros.h>

#pragma once

namespace gazebo
{
    class trackBall : public ModelPlugin
    {
    public:

        // public methods
        void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/);

        // Called by the world upda te start event
        void OnUpdate();

        void receivePose(const geometry_msgs::Point &newPose);

        // Pointer to the model
    private:
        // private a
        physics::ModelPtr robot;
        // Pointer to the update event connection
        event::ConnectionPtr updateConnection;

        ros::NodeHandle trackBallSubscribingNode;
        ros::Subscriber trackBallSubscriber;

        double x;
        double y;
        double z;
    };
    // Register this plugin with the simulator
    GZ_REGISTER_MODEL_PLUGIN(trackBall)
} // namespace gazebo