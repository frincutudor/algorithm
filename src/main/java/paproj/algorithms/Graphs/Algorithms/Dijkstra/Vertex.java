package paproj.algorithms.graphs.algorithms.dijkstra;

import paproj.algorithms.graphs.helpers.Edge;

import java.util.ArrayList;
import java.util.LinkedList;

/**
 * Created by Joywalker on 4/29/2017.
 */
public class Vertex implements Comparable<Vertex> {
    public double distance = Double.POSITIVE_INFINITY;
    ArrayList<Edge> neighboursList;
    public LinkedList<Vertex> shortestPathList;
    private int vertexIndex;

    public Vertex(int _index)
    {
        this.vertexIndex = _index;
        neighboursList = new ArrayList<Edge>();
        shortestPathList = new LinkedList<>();
    }
    public ArrayList<Edge> getNeighboursList() {
        return neighboursList;
    }
    public LinkedList<Vertex> getShortestPathList() {
        return shortestPathList;
    }
    public void addVertexToPath(Vertex visitedVertex)
    {
        shortestPathList.add(visitedVertex);
    }
    public int getVertexIndex() {return  vertexIndex;}

    @Override
    public int compareTo(Vertex other) {
        if(other.distance > this.distance)
            return -1;
        if(this.distance > other.distance)
            return 1;
        return 0;
    }

    @Override
    public String toString()
    {
        return String.valueOf(vertexIndex);
    }
}
