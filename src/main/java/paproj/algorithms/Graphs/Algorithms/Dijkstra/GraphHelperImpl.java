package paproj.algorithms.Graphs.Algorithms.Dijkstra;

import paproj.algorithms.Graphs.Helpers.Edge;
import paproj.algorithms.Graphs.Helpers.GraphHelper;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by Joywalker on 5/9/17.
 */
public class GraphHelperImpl implements GraphHelper {

    private int nVertices;
    private ArrayList<Vertex> vertices;

    public void initGraph(int _nVertices) {
        this.nVertices = _nVertices;
        vertices = new ArrayList<Vertex>(nVertices);

        for (int i = 0; i < nVertices + 1; i++) {
            vertices.add(new Vertex(i));
        }
    }

    public void addEdge(int _source, int _destination,double _cost)
    {
        Vertex ex = vertices.get(_source);
        Edge exEdge = new Edge(vertices.get(_destination),_cost);
        ex.neighboursList.add(exEdge);
    }

    public ArrayList<Vertex> getVertices() {
        return vertices;
    }

}
