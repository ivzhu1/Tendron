class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private float myNumSegments, myX, myY;
  private double myAngle, startX, startY, endX, endY;
  private int num;
  
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(float len, double theta, float x, float y)
  {
    myNumSegments = len;
    myX = x;
    myY = y;
    myAngle = theta;
    num = 3;
  }
  public void show()
  {
    stroke(255-myNumSegments*5,myNumSegments*4,70);
    startX = myX;
    startY = myY;
    for(int i = 0; i<myNumSegments; i++){
      myAngle += Math.random()*.4-.2;
      endX = startX + Math.cos(myAngle)*SEG_LENGTH;
      endY = startY + Math.sin(myAngle)*SEG_LENGTH;
      line((float)startX,(float)startY,(float)endX,(float)endY);
      startX = endX;
      startY = endY;
    }
    if(myNumSegments >= num){
      Cluster a = new Cluster(myNumSegments/4, (float)endX, (float)endY);
    }
  }
}
