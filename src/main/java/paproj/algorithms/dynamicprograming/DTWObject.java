package paproj.algorithms.dynamicprograming;

/**
 * Created by frincutudor on 5/21/17.
 */
public class DTWObject {

    int[][] warpingPath;
    double warpingDistance;

    public DTWObject(int[][] warpingPath, double warpingDistance) {
        this.warpingPath = warpingPath;
        this.warpingDistance = warpingDistance;
    }

    public int[][] getWarpingPath() {
        return warpingPath;
    }

    public void setWarpingPath(int[][] warpingPath) {
        this.warpingPath = warpingPath;
    }

    public double getWarpingDistance() {
        return warpingDistance;
    }

    public void setWarpingDistance(double warpingDistance) {
        this.warpingDistance = warpingDistance;
    }


}
