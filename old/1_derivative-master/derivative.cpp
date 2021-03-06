#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui/highgui.hpp"
#include <stdlib.h>
#include <stdio.h>

using namespace cv;

Mat& ApplyFilter(Mat& I, Mat& O, char* kernel)
{
    // accept only char type matrices
    CV_Assert(I.depth() != sizeof(uchar));

    const int channels = I.channels();
    switch(channels)
    {
    case 1:
        {
            MatIterator_<uchar> it1, end, it2;
            for( it1 = I.begin<uchar>(), end = I.end<uchar>(), it2 = O.begin<uchar>(); it1 != end; ++it1, ++it2)
	    {
                if (it1 == I.begin<uchar>())
		{
                     *it2 = 0;
		     continue;
		}
		int temp = (*it1)*(*(kernel + 1)) + *(it1-1)*(*kernel);
                *it2 = temp < 0 ? 0 : temp;
		*it2 = temp > 255 ? 255 : temp;
            }
            break;
        }
    case 3:
        {
            MatIterator_<Vec3b> it1, end, it2;
            for( it1 = I.begin<Vec3b>(), end = I.end<Vec3b>(), it2 = O.begin<Vec3b>(); it1 != end; ++it1, ++it2)
            {
                if (it1 == I.begin<uchar>())
                {
                     (*it2)[0] = 0;
                     (*it2)[1] = 0;
                     (*it2)[2] = 0;
		     continue;
                }
                (*it2)[0] = ((*it1)[0])*(*(kernel + 1)) + ((*(it1-1))[0])*(*kernel);
                (*it2)[1] = ((*it1)[1])*(*(kernel + 1)) + ((*(it1-1))[1])*(*kernel);
                (*it2)[2] = ((*it1)[2])*(*(kernel + 1)) + ((*(it1-1))[2])*(*kernel);
            }
        }
    }

    return I;
}

/** @function main */
int main ( int argc, char** argv )
{
  /// Declare variables
  Mat src, dst;

  Point anchor;
  double delta;
  int ddepth;
  int kernel_size;
  char* window_name = "filter2D Demo";

  int c;

  /// Load an image
  src = imread( argv[1], CV_LOAD_IMAGE_GRAYSCALE);
  dst = src.clone();

  if( !src.data )
  { return -1; }

  /// Create window
  namedWindow( window_name, CV_WINDOW_AUTOSIZE );

  char kernel[2] = {-1, 1};

  ApplyFilter(src, dst, kernel);
  imshow( window_name, dst );

  waitKey(0);

  return 0;
}
