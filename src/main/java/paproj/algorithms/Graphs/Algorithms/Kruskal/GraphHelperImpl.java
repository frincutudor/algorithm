package paproj.algorithms.Graphs.Algorithms.Kruskal;

import paproj.algorithms.Graphs.Algorithms.Dijkstra.Vertex;
import paproj.algorithms.Graphs.Helpers.Edge;
import paproj.algorithms.Graphs.Helpers.GraphHelper;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by Joywalker on 5/9/17.
 */
public class GraphHelperImpl implements GraphHelper {

    private HashMap<Integer, ArrayList<Edge>> graph;
    private int nVertices;
    public void initGraph(int _nVertices) {

        this.nVertices = _nVertices;
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
