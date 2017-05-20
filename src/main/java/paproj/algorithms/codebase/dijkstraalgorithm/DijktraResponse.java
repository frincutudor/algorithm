package paproj.algorithms.codebase.dijkstraalgorithm;

import java.util.ArrayList;

/**
 * Created by tufr261616 on 15.05.2017.
 */
public class DijktraResponse {
    int nrNodes;
    ArrayList<DijkstraWrapper> output;

    public int getNrNodes() {
        return nrNodes;
    }

    public void setNrNodes(int nrNodes) {
        this.nrNodes = nrNodes;
    }

    public ArrayList<DijkstraWrapper> getOutput() {
        return output;
    }

    public void setOutput(ArrayList<DijkstraWrapper> output) {
        this.output = output;
    }
}
