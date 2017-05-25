package paproj.algorithms.codebase.knapsackproblem;

/**
 * Created by Alex on 22.05.2017.
 */
public class KnapsackObject {
  double[] p;
  double[] w;
  double[] t;
    public KnapsackObject(double[] p, double[] w, double[] t){
        this.p = p;
        this.w = w;
        this.t = t;
    }
    public double[] getp(){return p;}
    public void setp(double[] p){this.p = p;}

    public double[] getW(){return w;}
    public void setW(double[] w){this.w = w;}

    public double[] getT(){return t;}
    public void setT(double[] t){this.t = t;}
}
