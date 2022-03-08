/*!/usr/bin/env python

# Copyright (c) TODO all Licence

#
#
#	
#
#	
*/

#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>

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
int LowerH = 30;// int LowerH = 30 out of 180
int LowerV = 205;// int LowerV = 205 out of 255
int LowerS = 120;// int LowerS = 120 out of 255


int UpperH = 70;// int UpperH = 40 out of 180 (robust on increasing above 40 until 90)
int UpperV = 240;// int UpperV = 240 out of 255  (robust on increasing above 240 until 255)
int UpperS = 210;// int LowerS = 210 out of 255


//Initialize ROS message and image publishers
//image_transport::Publisher img_pub_;
//ros::Publisher msg_pub_,  pub_visual_servoing;

Mat colorDetectionCallback()
//Mat colorDetectionCallback(const sensor_msgs::ImageConstPtr& original_image)
{
     
    //Get the Video capture, Image
    //cv::Mat img_original; 
    Mat img_original = imread("/home/fishy/catkin_ws/IMG-20211125-WA0011.jpg",IMREAD_COLOR);  // tested on 11,9,5,6
    
    //Initialize the image mask and the filtered image(only with green colours blobs)
    cv::Mat img_mask,img_hsv; 
    cv::cvtColor(img_original,img_hsv,COLOR_BGR2HSV);
 
    //Apply bit map image mask on the filtered image
    //Output of this image operation is a black and white image
    cv::inRange(img_hsv,cv::Scalar(LowerH,LowerS,LowerV),cv::Scalar(UpperH,UpperS,UpperV),img_mask); 

   
  //Display image mask window
  
  namedWindow( "original Image window", WINDOW_AUTOSIZE );
  namedWindow( "mask window", WINDOW_AUTOSIZE );
  imshow( "original Image window ", img_original); 
  imshow( "mask window ", img_mask ); 
  cv::waitKey(0);
}



int main(int argc, char **argv)
{
 
        //Create the Slider Trackbar window
	cv::namedWindow("Ball");
	cv::createTrackbar("LowerH","Ball",&LowerH,180,NULL);
	cv::createTrackbar("UpperH","Ball",&UpperH,180,NULL);
	cv::createTrackbar("LowerS","Ball",&LowerS,256,NULL);
	cv::createTrackbar("UpperS","Ball",&UpperS,256,NULL);
	cv::createTrackbar("LowerV","Ball",&LowerV,256,NULL);
	cv::createTrackbar("UpperV","Ball",&UpperV,256,NULL);
   	colorDetectionCallback(); 
}

		


