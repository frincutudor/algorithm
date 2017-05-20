package paproj.algorithms.codebase.dijkstraalgorithm;

import java.util.ArrayList;

/**
 * Created by tufr261616 on 15.05.2017.
 */
public class DijkstraWrapper {

    double cost;
    ArrayList<Integer> nodes;

    public DijkstraWrapper(double cost, ArrayList<Integer> nodes) {
        this.cost = cost;
        this.nodes = nodes;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public ArrayList<Integer> getNodes() {
        return nodes;
    }

    public void setNodes(ArrayList<Integer> nodes) {
        this.nodes = nodes;
    }
}
