#include <cv.h>
#include <highgui.h>

using namespace cv;

int main(int, char**)
{
    VideoCapture cap("/home/adity/Desktop/videos/VID_20160204_103952.3gp"); // open the video file
    if(!cap.isOpened())  // check if we succeeded
        return -1;

    Mat edges;
    namedWindow("edges",1);
    int i = 0;
    for(;;)
    {
        Mat frame;
        cap >> frame;
	if(!frame)
            break;
	i++;
	imwrite("/home/adity/Desktop/Images/1/" + i + ".jpg", gray_image);
    }
    // the camera will be deinitialized automatically in VideoCapture destructor
    return 0;
}


