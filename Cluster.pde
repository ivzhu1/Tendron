public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(float len, float x, float y)
    {
        for(int i = 0; i < 7; i++){
        Tendril bob = new Tendril(len,(float)(Math.random()*2*PI/7+i*2*PI/7), x, y);
        bob.show();
      }
    }
}
