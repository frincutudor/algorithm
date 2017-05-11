package paproj.algorithms.graphs.algorithms.kruskal;

import paproj.algorithms.graphs.helpers.Edge;
import paproj.algorithms.graphs.helpers.GraphHelper;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by Joywalker on 5/9/17.
 */
public class KruskalGraphHelperImpl implements GraphHelper {

    private HashMap<Integer, ArrayList<Edge>> graph;
    private int nVertices;
    public KruskalGraphHelperImpl(int _nVertices)
    {
        this.nVertices = _nVertices;
    }
    public void initGraph() {

        graph = new HashMap<>(nVertices);

        for (int i = 0; i < nVertices + 1; i++) {
            graph.put(i, new ArrayList<>());
        }
    }

    public void addEdge(int source, int destination, double cost)
    {
        graph.get(source).add(new Edge(source,destination,cost));
    }

    public HashMap<Integer,ArrayList<Edge>> getGraph() {return graph;}
}
