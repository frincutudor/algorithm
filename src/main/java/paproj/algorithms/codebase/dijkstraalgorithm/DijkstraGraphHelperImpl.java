package paproj.algorithms.codebase.dijkstraalgorithm;


import paproj.algorithms.codebase.dijkstraalgorithm.Vertex;
import paproj.algorithms.codebase.helperclasses.Edge;
import paproj.algorithms.codebase.helperclasses.GraphHelper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

/**
 * Created by Joywalker on 5/9/17.
 */
public class DijkstraGraphHelperImpl implements GraphHelper {

    private int nVertices;
    private ArrayList<Vertex> vertices;
    private Map<Vertex,LinkedList<Vertex>> shortestPaths;

    public DijkstraGraphHelperImpl(int nVertices)
    {
        this.nVertices = nVertices;
    }
    public void initGraph() {
        vertices = new ArrayList<Vertex>(nVertices);
        shortestPaths = new HashMap<>(nVertices);
        for (int i = 0; i < nVertices + 1; i++) {
            vertices.add(new Vertex(i));
            shortestPaths.put(new Vertex(i),new LinkedList<>());
        }
    }

    public void addEdge(int _source, int _destination,double _cost)
    {
        // Add double bond edges
        Vertex thisVertex = vertices.get(_source);
        Edge fromThisVertex = new Edge(vertices.get(_destination),_cost);

        Vertex thatVertex = vertices.get(_destination);
        Edge fromThatVertex = new Edge(vertices.get(_source),_cost);

        thisVertex.neighboursList.add(fromThisVertex);
        thatVertex.neighboursList.add(fromThatVertex);

    }
    public ArrayList<Vertex> getVertices() {
        return vertices;
    }
    public Vertex getVertex(int index){return vertices.get(index);}
    public Map<Vertex,LinkedList<Vertex>> getShortestPaths() {return shortestPaths;}
    public Map<ArrayList<Integer>,Double> generateDijkstraResponse()
    {
        Map<ArrayList<Integer>,Double> finalMap = new HashMap<>();
        for (Vertex vertex : this.vertices)
        {
            int size = vertex.getShortestPathList().size();
            ArrayList<Integer> vertexShortestPath = new ArrayList<>(size);
            for(Vertex pathVertex : vertex.shortestPathList)
            {
                    vertexShortestPath.add(pathVertex.getVertexIndex());
            }
            if(vertex.distance != Double.POSITIVE_INFINITY) {
                vertexShortestPath.add(vertex.getVertexIndex());
                finalMap.put(vertexShortestPath, vertex.distance);
            }
        }
        return finalMap;
    }

}
