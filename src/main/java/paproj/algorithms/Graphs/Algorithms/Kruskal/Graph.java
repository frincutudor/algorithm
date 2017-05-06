package paproj.algorithms.Graphs.Algorithms.Kruskal;

import paproj.algorithms.Graphs.Algorithms.Kruskal.Edge;
import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by Joywalker on 5/4/2017.
 */
public class Graph {

    private HashMap<Integer, ArrayList<Edge>> graph;
    private int nVertices;

    public Graph(int _nVertices)
    {
        this.nVertices = _nVertices;
        graph = new HashMap<>(nVertices);
        for(int i = 0; i < nVertices; i++)
        {
            graph.put(i,new ArrayList<>());
        }
    }

    public void addVertex(int vertex)
    {
        graph.put(vertex,new ArrayList<>());
    }
    public void addEdge(int source, int destination, int cost)
    {
        graph.get(source).add(new Edge(source,destination,cost));
    }
    public HashMap<Integer, ArrayList<Edge>> getGraph() {return graph;}
    //TODO : Add class to parse inserted values into array of 3 ints to call addEdge.
}


