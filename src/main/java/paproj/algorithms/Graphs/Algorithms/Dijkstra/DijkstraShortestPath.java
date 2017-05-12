package algorithms.dijkstra;

import algorithms.dijkstra.Vertex;
import helpers.Edge;

import java.util.*;

/**
 * Created by Joywalker on 4/29/2017.
 */
public class DijkstraShortestPath
{
    private int distances[];
    private PriorityQueue<Vertex> PQ;
    private int nbVertices;
    private Set<Vertex> visited;
    private Vertex source;

    public void DijkstraShortestPath(Vertex _source){

        /**
         *  i.Take the current node
         *  ii.Visit all his neighbours
         *  iii.Update distances to all the neighbours
         */
        PriorityQueue<Vertex> PQ = new PriorityQueue<Vertex>();
        this.source = _source;
        source.distance = 0;
        PQ.add(source);

        while(!PQ.isEmpty()){

            Vertex u = PQ.poll();
            double vertexDistance = u.distance;
            ArrayList<Edge> vertexNeighbours = u.getNeighboursList();
            for(Edge neighbour : vertexNeighbours)
            {
               double oldDistance = vertexDistance;
               double costToDestination = neighbour.getCost();
               double newDistance = oldDistance + costToDestination;

                Vertex destination = neighbour.getTo();
                if(destination.distance>newDistance){
                    // Remove the node and update it's distance
                    PQ.remove(destination);
                    destination.distance = newDistance;

                    // Add shortest path to this vertex to the final path [source -> destination]
                    destination.shortestPathList = new LinkedList<Vertex>(u.shortestPathList);
                    destination.addVertexToPath(u);

                    //Add the node back to the Queue, with it's new distance
                    PQ.add(destination);
                }
            }
        }
    }

    public void printPathTo(Vertex destination)
    {
            //print the shortest path from source to this node
            for(Vertex pathVertex : destination.shortestPathList) {
                System.out.print(pathVertex.toString()+"->");
            }
            //add the destination node
            System.out.println(destination);
    }
}
