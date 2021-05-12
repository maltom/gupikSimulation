#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <gazebo/common/Plugin.hh>


#include <gazebo/sensors/Sensor.hh>
#include <gazebo/sensors/CameraSensor.hh>
#include <gazebo/sensors/SensorTypes.hh>

#include <sensor_msgs/Illuminance.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/Int64.h>
#include <ros/ros.h>

#pragma once

namespace gazebo
{
    class gupikModel : public ModelPlugin
    {
    public:

        // public methods
        void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/);

        // Called by the world upda te start event
        void OnUpdate();

        void receivePose(const geometry_msgs::Twist &newPose);
        void receiveAzim(const geometry_msgs::Point &newPose);
        void updateFeedbackPose();

        // Pointer to the model
    private:
        // private a
        physics::ModelPtr robot;
        // Pointer to the update event connection
        event::ConnectionPtr updateConnection;

        physics::JointPtr leftThrusterServo = nullptr;
        physics::JointPtr rightThrusterServo = nullptr;

        ros::NodeHandle gupikSubscribingNode;
        ros::Subscriber gupikSubsciber;
        ros::Subscriber gupikAzimSubsciber;
        ros::Publisher  gupikFeedbackPublisher;

        double x;
        double y;
        double z;
        double roll;
        double pitch;
        double yaw;

        double leftThrusterAngle;
        double rightThrusterAngle;
    };
    // Register this plugin with the simulator
    GZ_REGISTER_MODEL_PLUGIN(gupikModel)
} // namespace gazebo



#include <ros/ros.h>

#include "gazebo_plugins/gazebo_ros_camera.h"

#include <string>


namespace gazebo
{
  // Register this plugin with the simulator
  GZ_REGISTER_SENSOR_PLUGIN(GazeboRosLight)

  ////////////////////////////////////////////////////////////////////////////////
  // Constructor
  GazeboRosLight::GazeboRosLight():
  _nh("light_sensor_plugin"),
  _fov(6),
  _range(10)
  {
    _sensorPublisher = _nh.advertise<sensor_msgs::Illuminance>("lightSensor", 1);
  }

  ////////////////////////////////////////////////////////////////////////////////
  // Destructor
  GazeboRosLight::~GazeboRosLight()
  {
    ROS_DEBUG_STREAM_NAMED("camera","Unloaded");
  }

  void GazeboRosLight::Load(sensors::SensorPtr _parent, sdf::ElementPtr _sdf)
  {
    // Make sure the ROS node for Gazebo has already been initialized
    if (!ros::isInitialized())
    {
      ROS_FATAL_STREAM("A ROS node for Gazebo has not been initialized, unable to load plugin. "
        << "Load the Gazebo system plugin 'libgazebo_ros_api_plugin.so' in the gazebo_ros package)");
      return;
    }

    CameraPlugin::Load(_parent, _sdf);
    // copying from CameraPlugin into GazeboRosCameraUtils
    this->parentSensor_ = this->parentSensor;
    this->width_ = this->width;
    this->height_ = this->height;
    this->depth_ = this->depth;
    this->format_ = this->format;
    this->camera_ = this->camera;

    GazeboRosCameraUtils::Load(_parent, _sdf);
  }