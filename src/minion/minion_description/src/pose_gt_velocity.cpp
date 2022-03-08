#include <ros/ros.h>
#include <tf2_ros/transform_listener.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/Twist.h>
#include <tf/transform_listener.h>
#include <nav_msgs/Odometry.h>

double hypotenuse(double xa, double ya, double xb, double yb)
{
  double dx = xb-xa; double dy = yb-ya;
  return sqrt(dx*dx + dy*dy);
}


int main(int argc, char** argv){
 ros::init(argc, argv, "my_tf2_listener");

 ros::NodeHandle node;
 ros::Publisher robot_vel =node.advertise<geometry_msgs::Twist>("robot/vel", 10);
 //tf2_ros::Buffer tfBuffer;
 //tf2_ros::TransformListener tfListener(tfBuffer);
 tf::TransformListener listener;
 geometry_msgs::Twist objectTwist;// novo

 double vel_linear,xlast = 0 ,ylast = 0;

 ros::Rate rate(10.0);
 while (node.ok()){
   //geometry_msgs::TransformStamped transformStamped;
   tf::StampedTransform transform;
   try{
     //listener.lookupTransform("world", "rexrov2/base_link", ros::Time(0), transform);//ova bese ok
     //listener.lookupVelocity("world", "rexrov2/base_link", ros::Time(0), transform);
     listener.lookupTwist("rexrov2/pose_sensor_link_default", "world_ned", ros::Time(0), ros::Duration(0.1), objectTwist);//novo

      }
   catch (tf2::TransformException &ex) {
     ROS_WARN("%s",ex.what());
     ros::Duration(1.0).sleep();
     continue;
                                       }

   geometry_msgs::Twist vel_msg;
   geometry_msgs::Twist vel_msg_twist;
   vel_msg_twist.linear.x= objectTwist.linear.x ;
   //nav_msgs::Odometry vel_msg;
   //vel_msg.linear.x = 0.5 * sqrt(pow(transformStamped.transform.translation.x, 2) + pow(transformStamped.transform.translation.y, 2)+pow(transformStamped.transform.translation.z, 2));
   vel_msg.linear.x = 10*hypotenuse(xlast,ylast, transform.getOrigin().x(),transform.getOrigin().y());
   xlast = transform.getOrigin().x(); ylast = transform.getOrigin().y();
   //double dist_x= transform.getOrigin().x()- xlast; double dist_y= transform.getOrigin().y()- ylast;
   //double db=10*transform.getOrigin().x(); double da= 10*xlast; double d= db-da;
   //ROS_INFO("d = %f", db); 	
   //robot_vel.publish(vel_msg); ova bese ok
   robot_vel.publish(vel_msg_twist);

   rate.sleep();
                 }
 return 0;
};






