package paproj.algorithms.Graphs.Helpers;

import paproj.algorithms.Graphs.Algorithms.Dijkstra.Vertex;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * Created by Joywalker on 5/4/2017.
 */
public class GraphHelper {

    private HashMap<Integer, ArrayList<Edge>> graph;
    private int verticesCount;
    private ArrayList<Vertex> vertices;

    //Dijkstra [cast to int]
    public GraphHelper(int nVertices)
    {
        this.verticesCount = nVertices;
        vertices = new ArrayList<Vertex>(verticesCount);
        graph = new HashMap<>(verticesCount);

        for(int i = 0; i< verticesCount+1; i++)
        {
            vertices.add(new Vertex(i));
            graph.put(i,new ArrayList<>());

        }
    }

    //double cost for Dijkstra
    public void addEdge(int _source, int _destination,double _cost)
    {
        Vertex ex = vertices.get(_source);
        Edge exEdge = new Edge(vertices.get(_destination),_cost);
        ex.neighboursList.add(exEdge);
    }

    //int cost for Kruskal
    public void addEdge(int source, int destination, int cost)
    {
        graph.get(source).add(new Edge(source,destination,cost));
    }

    public void addVertex(int vertex)
    {
        graph.put(vertex,new ArrayList<>());
    }

    public ArrayList<Vertex> getVertices() {return vertices;}
    public Vertex getVertex(int index)
    {
        return vertices.get(index);
    }
    public HashMap<Integer, ArrayList<Edge>> getGraph() {return graph;}

    //TODO : Add class to parse inserted values into array of 3 values to call addEdge.
}


