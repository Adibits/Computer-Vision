#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <string>
#include <stdlib.h>
using namespace cv;
using namespace std;

int debug = 0;
int squareEdge = 100;
int numPatches = 3;

namespace patch
{
    template < typename T > std::string to_string( const T& n )
    {
        std::ostringstream stm ;
        stm << n ;
        return stm.str() ;
    }
}

void getPatch(Mat &img, Mat &roiImg)
{
	cout << "\n In getPatch() \n";
	int ranrow = rand() % img.rows;
	int rancol = rand() % img.cols;
	
	cout << img.rows << '\n' << img.cols << "\n";
	cout << ranrow << '\n' << rancol << "\n";
	
	if (ranrow + squareEdge > img.rows) ranrow -= squareEdge;
	if (rancol + squareEdge > img.cols) rancol -= squareEdge;
	
	if (ranrow < 0) ranrow = 0;
	if (rancol < 0) rancol = 0;
		
	roiImg = img(Rect(rancol, ranrow, squareEdge, squareEdge));
}

int main()
{
    VideoCapture cap = VideoCapture("VID_20160204_104504.avi"); /* Start webcam */
    
    if (!cap.isOpened()) {
		cout << "Error Opening video";
		return -1;
	}

    int i = 3747;

    while(1)
    {
		Mat img, roiImg;
		cap >> img; /* get image(Mat) */
		
		if (debug)
			cout << i << '\n';
	
		if (img.empty())
			break;
			
		for (int j = 0; j < numPatches; j++) {
			getPatch(img, roiImg);

			if (!roiImg.empty()) {
				string s = "/home/adity/Desktop/projects/misc/fetchNegatives/images/" + patch::to_string(i) + ".png";
				imwrite(s, roiImg);
			}
			i++;
		}
    }
    return 0;
}
