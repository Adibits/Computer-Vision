import java.util.Vector;

import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.core.MatOfByte;
import org.opencv.core.MatOfFloat;
import org.opencv.core.MatOfPoint;
import org.opencv.core.MatOfPoint2f;
import org.opencv.core.Point;
import org.opencv.core.Scalar;
import org.opencv.core.Size;
import org.opencv.core.TermCriteria;
import org.opencv.video.*;
import org.opencv.highgui.*;
import org.opencv.imgproc.*;

public class motionTracking
{
	static int windowSize = 7;
	double lowerThreshold = 0.5;
	
	static double pi = 3.14159265358979323846;

	static double square(double a)
	{
		return a * a;
	}
	
	public static void main( String[] args )
	{
		System.loadLibrary( Core.NATIVE_LIBRARY_NAME );
		System.out.println( "Motion Tracking in Java.. o_O");
		VideoCapture cap = new VideoCapture("video.mp4");
		Size S = new Size((int) cap.get(Highgui.CV_CAP_PROP_FRAME_WIDTH),    // Acquire input size
                (int) cap.get(Highgui.CV_CAP_PROP_FRAME_HEIGHT));
		
		Size winSize = new Size(31,31);
	
		
		// CHECK THIS STATEMENT ONCE
		TermCriteria termcrit = new TermCriteria(TermCriteria.MAX_ITER | TermCriteria.EPS, 20, 0.3);
		
		if( !cap.isOpened() )
		{
			System.out.println("***Could not initialize capturing...***\n");
			System.out.println("Current parameter's value: \n");
	        return;
		}
		
		Vector<Mat> frames = new Vector<Mat>();
		Vector<Mat> grayFrames = new Vector<Mat>();
		Vector<Double> total = new Vector<Double>();
		int j = 0;
		
		// data preparation
		for (int i = 0; i < windowSize; i++)
		{
			Mat currImage = new Mat();
			Mat grayCurrImage = new Mat();
			cap.read(currImage);
			Imgproc.cvtColor(currImage, grayCurrImage, Imgproc.COLOR_BGR2GRAY);
			frames.add(currImage);
			grayFrames.add(grayCurrImage);
			if (i < windowSize - 1)
				total.add(0.0);
		}
		
		while(true)
		{
			Mat currImage = new Mat();
			Mat grayCurrImage = new Mat();
			MatOfPoint[] corners1 = new MatOfPoint[2];
			corners1[0]= new MatOfPoint();
			corners1[1]= new MatOfPoint();
			

			// maxCorners – The maximum number of corners to return. If there are more corners
			// than that will be found, the strongest of them will be returned
			int maxCorners = 400;

			// qualityLevel – Characterizes the minimal accepted quality of image corners;
			// the value of the parameter is multiplied by the by the best corner quality
			// measure (which is the min eigenvalue, see cornerMinEigenVal() ,
			// or the Harris function response, see cornerHarris() ).
			// The corners, which quality measure is less than the product, will be rejected.
			// For example, if the best corner has the quality measure = 1500,
			// and the qualityLevel=0.01 , then all the corners which quality measure is
			// less than 15 will be rejected.
			double qualityLevel = 0.01;

			// minDistance – The minimum possible Euclidean distance between the returned corners
			double minDistance = 20.;

			// mask – The optional region of interest. If the image is not empty (then it
			// needs to have the type CV_8UC1 and the same size as image ), it will specify
			// the region in which the corners are detected
			Mat mask = new Mat();

			// blockSize – Size of the averaging block for computing derivative covariation
			// matrix over each pixel neighborhood, see cornerEigenValsAndVecs()
			int blockSize = 3;

			// useHarrisDetector – Indicates, whether to use operator or cornerMinEigenVal()
			Boolean useHarrisDetector = false;

			// k – Free parameter of Harris detector
			double k = 0.04;

			MatOfByte status = new MatOfByte();
			MatOfFloat err = new MatOfFloat();

			Imgproc.goodFeaturesToTrack(
					grayFrames.get(windowSize - 1),
					corners1[0],
					maxCorners,
					qualityLevel,
					minDistance,
					mask,
					blockSize,
					useHarrisDetector,
					k);
			j++;

			if (corners1[0].empty())
			{
				//System.out.println("No corners found\n");
				total.add(0.0);
				continue;
			}
			/*else
			{
				Point[] oldCor1 = corners1[0].toArray();
				//System.out.println("Num Corners=" + oldCor1.length);
			}*/
			

			double temp = 0;
			int count = 0;

			for (int k1 = 1; k1 < windowSize; k1++)
			{
				MatOfPoint2f[]  corners = new MatOfPoint2f[2];
				corners[0] = new MatOfPoint2f();
				corners[0].fromArray(corners1[0].toArray());
				corners[1] = new MatOfPoint2f();
				double temp1 = 0;
				Mat prevImg = grayFrames.elementAt(windowSize - 1);
				Mat nextImg = grayFrames.elementAt(windowSize - k1 - 1);
				Video.calcOpticalFlowPyrLK(
						prevImg,
						nextImg,
						corners[0],
						corners[1],
						status,
						err,
						winSize,
						5,
						termcrit,
						0,
						0.001);
				
				Point[] oldCor = corners[0].toArray();
				Point[] newCor = corners[1].toArray();
				byte[] sta = status.toArray();
				
				for (int i = 0; i < sta.length; i++)
				{
					if (sta[i] == 0)	continue;
					
					Point p = new Point(), q = new Point();
					p.x = (int) oldCor[i].x;
					p.y = (int) oldCor[i].y;
					q.x = (int) newCor[i].x;
					q.y = (int) newCor[i].y;

					//double angle;		
					//angle = Math.atan2( (double) p.y - q.y, (double) p.x - q.x );

					double hypotenuse;	
					hypotenuse = Math.sqrt( square(p.y - q.y) + square(p.x - q.x) );
					
					//System.out.println("{" + p.x + ", " + p.y + "}, " + "{" + q.x + ", " + q.y + "}, ");

					if (hypotenuse < 1 || hypotenuse > 12 || hypotenuse != hypotenuse)
						continue;

					temp1 = temp1 + hypotenuse;
					count++;
				}
				
				//System.out.println("\n");

				if (count == 0)
					continue;

				temp = temp + temp1 / count;
			}
			
			frames.remove(0);
			grayFrames.remove(0);
			total.add(temp / windowSize);
			boolean isOver = cap.read(currImage);
			if (!isOver)
				break;
			Imgproc.cvtColor(currImage, grayCurrImage, Imgproc.COLOR_BGR2GRAY);
			frames.add(currImage);
			grayFrames.add(grayCurrImage);
		}
		double avg = 0;
		double max = 0;
		cap.release();
		cap.open("video.mp4");
		
		for (int i = 0; i < j + windowSize - 1; i++)
		{
			avg = avg + total.elementAt(i);
			if (total.elementAt(i) > max)
			{
				max = total.elementAt(i);
			}
			/* else if (total[i] < min)
				min = total[i]; */
		}

		avg = avg / (j + windowSize - 1);
		
		VideoWriter vid = new VideoWriter();
		//int exi = ex.toInt();
		//String ss = ex.toString();
		
		// FOURCCs 
		//    FLV1 = 827739206
		vid.open("output.avi", 827739206, cap.get(5), S, true);

	   	if (!vid.isOpened())
    	{
   			System.out.println("***Could not open the output video for write:...***\n");
    	}

		boolean started = false;
		double threshold = avg + max / 8;
		for (int i = 0; i < j + windowSize - 1; i++)
		{
			Mat currImage = new Mat();
			if (started)
				threshold = avg + max / 9;
			cap.read(currImage);
			if (total.elementAt(i) >= threshold)
			{
				String s = Integer.toString(i);
				String text = "Frame number = ";
				text = text + s;
				int fontFace = Core.FONT_HERSHEY_SCRIPT_SIMPLEX;
				double fontScale = 1;
				int thickness = 1;  
				Point textOrg = new Point();
				textOrg.x = 1;
				textOrg.y = 20;
				Core.putText(currImage, text, textOrg, fontFace, fontScale, Scalar.all(255), thickness);
				vid.write(currImage);
				if (!started)
					started = true;
			}
		}
		cap.release();
   }
}