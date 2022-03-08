/*!/usr/bin/env python

# Copyright (c) TODO all Licence


# This is a ROS Node 
#
# Description: This ros node takes image from follower robot onboard camera then detect the green colours spots on the following robot and calculate the center point and the distance to the following robot
# The input is a ROS image from follower robot then the node makes it avaliable for image processing with OpenCV
# The node convert RGB image to image mask with a size of 768x492 to work with. 
# The node apply image moment on the whole image mask and normalized the Center x,y coordinates. The distance referes to the area. 
#
# Publisher 
#	*Topic:   servo_img	Vector3
                  servo_img.x = X normilized coordinate center
#		  servo_img.y = y normilized coordinate center
#		  servo_img.z = Area(distance to the following robot)


#
# Subscriber
#	*Topic:  /minion2/minion2/camera/camera_image	Image
#		
#	
#
#	
# Note: The node make advantage of applying image moment on the whole image mask. A more robust approach would be using contours
# Note: All topics addresses are relative*/


#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <string>
#include <geometry_msgs/Vector3.h>

//Intitialize image sensor messages encoding
namespace enc = sensor_msgs::image_encodings;
 
//initialize variables image dispay windows
    // CURRENTLY OFF
//static const char WINDOW[] = "Image Processed";
//static const char WINDOW1[] = "Original Image";

//Initialize standard variables
using namespace cv;
using namespace std;


//Setting HSV Histogram trackbar slidebar
//Note Green Color is between 38 and 75 H values in the HSV scale

// the following values are the ones used initially and working for gazebo images
int LowerH = 38;
int LowerS = 23;
int LowerV = 0;
int UpperH = 75;
int UpperS = 255;
int UpperV = 255;


/* the following values are the ones used for real images taken with phone on mock-up led fish */
/*
int LowerH = 30;
int LowerS = 120;
int LowerV = 205;
int UpperH = 70;
int UpperS = 210;
int UpperV = 240;
*/

//Initialize ROS message and image publishers
image_transport::Publisher img_pub_;
ros::Publisher msg_pub_,  pub_visual_servoing;

void colorDetectionCallback(const sensor_msgs::ImageConstPtr& original_image)
{
     
    //Convert ROS Image sensor message from the Follower onboard camera to OpenCV Image only for displaying it
    //OpenCV image is ecoded BGR8
     cv_bridge::CvImagePtr cv_ptr_original;
    try
    {
      cv_ptr_original = cv_bridge::toCvCopy(original_image, enc::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }
    
    //Show the Follower Camera Image
    // CURRENTLY OFF
    //cv::imshow(WINDOW1, cv_ptr_original->image);
    //cv::waitKey(1);

    //Convert ROS Image sensor message from the Follower onboard camera to OpenCV Image for image processing 
    //OpenCV image is ecoded BGR8
    cv_bridge::CvImagePtr cv_ptr;
    try
    {
        cv_ptr = cv_bridge::toCvCopy(original_image, enc::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
        ROS_ERROR("tutorialROSOpenCV::main.cpp::cv_bridge exception: %s", e.what());
        return;
    }

        //Initialize the image mask and the filtered image(only with green colours blobs)
	cv::Mat img_mask,img_hsv; 
	cv::cvtColor(cv_ptr->image,img_hsv,CV_BGR2HSV);
	//Apply bit map image mask on the filtered image
        //Output of this image operation is a black and white image
	cv::inRange(img_hsv,cv::Scalar(LowerH,LowerS,LowerV),cv::Scalar(UpperH,UpperS,UpperV),img_mask); 



   //Get the image moments on the image mask
   Moments m = moments( img_mask, true);

   //Get the normilized Center x,y coordinated
   //The Size of the image mask is 768x492
   //Calculate the center based on pixels intensity 0 to 255
   //The distance is calclated from the image momet area, smaller the area bigger the distance
   double x_target_normalized = 0;
   double y_target_normalized = 0;
   if (m.m00 == 0) {
       x_target_normalized = 0;
       y_target_normalized = 0;
   }
   else {
   x_target_normalized = double(m.m10/m.m00 -384)/384;
   y_target_normalized = double(-m.m01/m.m00 +246)/246;
   }
   // Point p_center(x_target_normalized ,y_target_normalized);
   
   //Display moments and normilized Center x,y coordinated
   std::cout << " moments= :" << m.m00 << " _ " << x_target_normalized << y_target_normalized << std::endl;

  //publisher message preparation
  geometry_msgs::Vector3 visual_servoing;
  double x_center = x_target_normalized;
  double y_center = y_target_normalized;
  int area = m.m00;
  visual_servoing.x = x_center;
  visual_servoing.y = y_center;
  visual_servoing.z = area;
  pub_visual_servoing.publish(visual_servoing);

  //Display image mask window
    // CURRENTLY OFF
  //cv::imshow(WINDOW, img_mask);
  //cv::waitKey(1);
    
}


int main(int argc, char **argv)
{
  
    //Initialize the ROS Node 
    ros::init(argc, argv, "image_processor");
    ros::NodeHandle nh("~");

    image_transport::ImageTransport it(nh);


        //Create the Slider Trackbar window
        // CURRENTLY OFF

	//cv::namedWindow("Ball");
	//cv::createTrackbar("LowerH","Ball",&LowerH,180,NULL);
	//cv::createTrackbar("UpperH","Ball",&UpperH,180,NULL);
	//cv::createTrackbar("LowerS","Ball",&LowerS,256,NULL);
	//cv::createTrackbar("UpperS","Ball",&UpperS,256,NULL);
	//cv::createTrackbar("LowerV","Ball",&LowerV,256,NULL);
	//cv::createTrackbar("UpperV","Ball",&UpperV,256,NULL);

    //Initialize and name the Image Display Windows
    // CURRENTLY OFF

    //cv::namedWindow(WINDOW, CV_WINDOW_AUTOSIZE);
    //cv::namedWindow(WINDOW1, CV_WINDOW_AUTOSIZE);

    //Subribe to ROS camera image topic with a 20 Hz rate
    //Publish the ROS topic as geometry message with a 100 Hz rate
    //Publish pub_visual_servoing as a 3 Vector
    //Main loop on camera
    
    image_transport::Subscriber sub = it.subscribe("camera/camera_image", 20, colorDetectionCallback);
    pub_visual_servoing = nh.advertise<geometry_msgs::Vector3>("servo_img", 100);
    
    ros::spin();
    ROS_INFO("tutorialROSOpenCV::main.cpp::No error.");
 
}

		


