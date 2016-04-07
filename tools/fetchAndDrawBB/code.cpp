#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <string>
using namespace cv;
using namespace std;

int debug = 0;

Point point1, point2; /* vertical points of the bounding box */
int drag = 0;
Rect rect; /* bounding box */
Mat img, roiImg; /* roiImg - the part of the image in the bounding box */
int select_flag = 0;

namespace patch
{
    template < typename T > std::string to_string( const T& n )
    {
        std::ostringstream stm ;
        stm << n ;
        return stm.str() ;
    }
}

void mouseHandler(int event, int x, int y, int flags, void* param)
{
	rect = Rect(0,0,0,0);
    if (event == CV_EVENT_LBUTTONDOWN && !drag)
    {
        /* left button clicked. ROI selection begins */
        point1 = Point(x, y);
        drag = 1;
    }
     
    if (event == CV_EVENT_MOUSEMOVE && drag)
    {
        /* mouse dragged. ROI being selected */
        Mat img1 = img.clone();
        point2 = Point(x, y);
        rectangle(img1, point1, point2, CV_RGB(255, 0, 0), 3, 8, 0);
        imshow("image", img1);
    }
     
    if (event == CV_EVENT_LBUTTONUP && drag)
    {
        point2 = Point(x, y);
        rect = Rect(point1.x,point1.y,x-point1.x,y-point1.y);
        drag = 0;
        roiImg = img(rect);
    }
     
    if (event == CV_EVENT_LBUTTONUP)
    {
       /* ROI selected */
        //select_flag = 1;
        drag = 0;
    }
}

void usage() {
	cout << "Usage:\n" \
	 << "1. 'Esc' to exit\n" \
	 << "2. 'Enter' to save image and fetch new frame\n" \
	 << "3. 'Shift' to skip frame\n";
}

int main()
{
    int k;
    VideoCapture cap = VideoCapture("VID_20160204_104958-2.avi"); /* Start webcam */
    
    if (!cap.isOpened()) {
		cout << "Error Opening video";
		return -1;
	}
        
    int continueFrom;
    int numSkipped = 0;
    int i = 0;
    
    usage();
    cout << "Enter the frame number to resume from: ";
    cin >> continueFrom;
    
    while(1)
    {
		cap >> img; /* get image(Mat) */
		
		if (debug)
			cout << i << '\n';
	
		if (img.empty())
			break;
		
		i++;
		if (i < continueFrom)
			continue;
			
		imshow("image", img);
		
        cvSetMouseCallback("image", mouseHandler, NULL);

        if (select_flag == 1)
        {
            imshow("ROI", roiImg); /* show the image bounded by the box */
        }
        
        k = waitKey(0);
        if (k == 1048603) //escape
        {
            return 0;
        }
        
        if (debug)
			cout << k << '\n';
        
        if (k == 1114082) //shift key 
        {
			i--;
			numSkipped++;
		}
        
        if (!roiImg.empty() && k == 1048586 /*enter key*/) {
			string s = "/home/adity/Desktop/images/VID_20160204_104958-2/" + patch::to_string(i) + ".jpg";
			imwrite(s, roiImg);
		}
    }
    cout << "Number of frames skipped: " << numSkipped << "\n";
    return 0;
}
