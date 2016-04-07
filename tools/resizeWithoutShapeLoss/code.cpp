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
	int c = 2499;
    for (int i = 1; i <= 5158; i++) {
		string filename = "/home/adity/Desktop/projects/misc/resizeWithoutShapeLoss/data/" + patch::to_string(i) + ".png";
		Mat img = imread(filename, CV_LOAD_IMAGE_GRAYSCALE);
		if (img.empty()) continue;
		cout << i;
		
		value = Scalar( rng.uniform(0, 255), rng.uniform(0, 255), rng.uniform(0, 255) );
		if (img.rows > img.cols)
			copyMakeBorder( img, img, 0, img.rows - img.cols, 0, 0, BORDER_REPLICATE, value );
		else 
			copyMakeBorder( img, img, 0, img.cols - img.rows, 0, 0, BORDER_REPLICATE, value );
			
		resize(img, img, Size(28, 28), 0, 0, INTER_NEAREST);
			
		if (debug) {
			imshow("dst1.jpg", img);
			waitKey(0);
		}
		string filename1 = "/home/adity/Desktop/projects/misc/resizeWithoutShapeLoss/newdata/" + patch::to_string(c) + ".png";
		c++;
		imwrite(filename1, img);
	}
		
    return 0;
}
