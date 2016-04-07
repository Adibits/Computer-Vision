#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <string>
using namespace cv;
using namespace std;

int debug = 0;
RNG rng(12345);
Scalar value;

namespace patch
{
    template < typename T > std::string to_string( const T& n )
    {
        std::ostringstream stm ;
        stm << n ;
        return stm.str() ;
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
	int c = 1;
	Mat img = imread("1.jpg");
	if (img.empty()) return 0;
	
	resize(img, img, Size(1800, 3198), 0, 0, INTER_CUBIC);
		
	if (debug) {
		imshow("dst1.jpg", img);
		waitKey(0);
	}

	imwrite("2.jpg", img);
		
    return 0;
}
