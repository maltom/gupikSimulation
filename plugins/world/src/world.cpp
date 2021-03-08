/*#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>
#include <iostream>

#include <geometry_msgs/Twist.h>
#include <std_msgs/Int64.h>
#include <iostream>
#include <ros/ros.h>

namespace gazebo
{
    class world : public WorldPlugin
    {
    public:
        void Load(physics::WorldPtr _parent, sdf::ElementPtr /*_sdf*//*)
        {
            // Option 1: Insert model from file via function call.
            // The filename must be in the GAZEBO_MODEL_PATH environment variable.
            _parent->InsertModelFile("resource://mate.world");
        }
    };
    // Register this plugin with the simulator
    GZ_REGISTER_WORLD_PLUGIN(world)
} // namespace gazebo*/

#include <gazebo/gazebo.hh>

namespace gazebo
{
  class world : public WorldPlugin
  {
    public: world() : WorldPlugin()
            {
              printf("Hello World!\n");
            }

    public: void Load(physics::WorldPtr _world, sdf::ElementPtr _sdf)
            {
            }
  };
  GZ_REGISTER_WORLD_PLUGIN(world)
}