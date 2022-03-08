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
#include <geometry_msgs/Vector3.h>

//Intitialize image sensor messages encoding
//namespace enc = sensor_msgs::image_encodings;
 
//initialize variables image dispay windows
//static const char WINDOW[] = "Image Processed";
//static const char WINDOW1[] = "Original Video";

//Initialize standard variables
using namespace cv;
using namespace std;


//Setting HSV Histogram trackbar slidebar
//Note Green Color is between 38 and 75 H values in the HSV scale
int LowerH = 130;// int LowerH = 130
int LowerV = 180;// int LowerV = 180;
int LowerS = 0;


int UpperH = 150;//int UpperH =150
int UpperV = 230;//int UpperV = 230;
int UpperS = 200;


//Initialize ROS message and image publishers
//image_transport::Publisher img_pub_;
//ros::Publisher msg_pub_,  pub_visual_servoing;

Mat colorDetectionCallback()
//Mat colorDetectionCallback(const sensor_msgs::ImageConstPtr& original_image)
{
     
    //Get the Video capture, Image
    //cv::Mat img_original; 
    //Mat img_original = imread("/home/fishy/catkin_ws/test.jpg");
    //Mat img_original = imread("/home/fishy/catkin_ws/IMG-20211125-WA0005.jpg");
    //Mat img_original = imread("/home/fishy/catkin_ws/IMG-20211125-WA0006.jpg");
    //Mat img_original = imread("/home/fishy/catkin_ws/IMG-20211125-WA0007.jpg");
    //Mat img_original = imread("/home/fishy/catkin_ws/IMG-20211125-WA0008.jpg");
    //Mat img_original = imread("/home/fishy/catkin_ws/IMG-20211125-WA0009.jpg");
    //Mat img_original = imread("/home/fishy/catkin_ws/IMG-20211125-WA0010.jpg");
    Mat img_original = imread("/home/fishy/catkin_ws/IMG-20211125-WA0011.jpg");
    //Mat img_original = imread("/home/fishy/catkin_ws/IMG-20211125-WA0012.jpg");
    //Mat img_original = imread("/home/fishy/catkin_ws/IMG-20211125-WA0013.jpg");
    //Mat img_original = imread("/home/fishy/catkin_ws/IMG-20211125-WA0014.jpg");
    //Mat img_original = imread("/home/fishy/catkin_ws/IMG-20211125-WA0015.jpg");
    
    //Initialize the image mask and the filtered image(only with green colours blobs)
    cv::Mat img_mask,img_hsv; 
    cv::cvtColor(img_original,img_hsv,CV_BGR2HSV);
 
    //Apply bit map image mask on the filtered image
    //Output of this image operation is a black and white image
    cv::inRange(img_hsv,cv::Scalar(LowerH,LowerS,LowerV),cv::Scalar(UpperH,UpperS,UpperV),img_mask); 

   

   

  //publisher message preparation
  /*
  geometry_msgs::Vector3 visual_servoing;
  double x_center = x_target_normalized;
  double y_center = y_target_normalized;
  int area = m.m00;
  visual_servoing.x = x_center;
  visual_servoing.y = y_center;
  visual_servoing.z = area;
  pub_visual_servoing.publish(visual_servoing);
  */
  //Display image mask window
  
  namedWindow( "original Image window", WINDOW_AUTOSIZE );
  namedWindow( "mask window", WINDOW_AUTOSIZE );
  imshow( "original Image window ", img_original ); 
  imshow( "mask window ", img_mask ); 
  cv::waitKey(0);
  //destroyAllWindows();

}



int main(int argc, char **argv)
{
  
    //Initialize the ROS Node 
   // ros::init(argc, argv, "image_processor");
    //ros::NodeHandle nh;
    //image_transport::ImageTransport it(nh);

        //Create the Slider Trackbar window
	cv::namedWindow("Ball");
	cv::createTrackbar("LowerH","Ball",&LowerH,180,NULL);
	cv::createTrackbar("UpperH","Ball",&UpperH,180,NULL);
	cv::createTrackbar("LowerS","Ball",&LowerS,256,NULL);
	cv::createTrackbar("UpperS","Ball",&UpperS,256,NULL);
	cv::createTrackbar("LowerV","Ball",&LowerV,256,NULL);
	cv::createTrackbar("UpperV","Ball",&UpperV,256,NULL);

    //Initialize and name the Image Display Windows
    //cv::namedWindow(WINDOW, CV_WINDOW_AUTOSIZE);
    //cv::namedWindow(WINDOW1, CV_WINDOW_AUTOSIZE);
   
    colorDetectionCallback();
    //cv::waitKey(3);

    //Subribe to ROS camera image topic with a 20 Hz rate
    //Publish the ROS topic as geometry message with a 100 Hz rate
    //Publish pub_visual_servoing as a 3 Vector
    //Main loop on camera
    //image_transport::Subscriber sub = it.subscribe("/minion2/minion2/camera/camera_image", 20, colorDetectionCallback);
    //pub_visual_servoing = nh.advertise<geometry_msgs::Vector3>("servo_img", 100);
    return 0;
    //ros::spin();
   // ROS_INFO("tutorialROSOpenCV::main.cpp::No error.");
 
}

		


