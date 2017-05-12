package paproj.helpers.commonhelpers;


import helperclasses.Edge;

import java.util.ArrayList;

/**
 * Created by frincutudor on 5/8/17.
 */
public class KruskalObject {

    int numberOfNodes;
    ArrayList<Edge> edges;

    public KruskalObject(ArrayList<Edge> edges, int numberOfNodes) {
        this.edges = edges;
        this.numberOfNodes=numberOfNodes;
    }

    public int getNumberOfNodes() {
        return numberOfNodes;
    }

    public void setNumberOfNodes(int numberOfNodes) {
        this.numberOfNodes = numberOfNodes;
    }

    public ArrayList<Edge> getEdges() {
        return edges;
    }

    public void setEdges(ArrayList<Edge> edges) {
        this.edges = edges;
    }
}
