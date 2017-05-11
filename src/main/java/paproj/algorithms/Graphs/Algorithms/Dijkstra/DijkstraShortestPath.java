package paproj.algorithms.Graphs.Algorithms.Dijkstra;
import paproj.algorithms.Graphs.Helpers.Edge;

import java.util.*;

/**
 * Created by Joywalker on 4/29/2017.
 */
public class DijkstraShortestPath
{
    private PriorityQueue<Vertex> PQ;
    private static Vertex source;

    public static void DijkstraShortestPath(Vertex _source){

        /**
         *  i.Take the current node
         *  ii.Visit all his neighbours
         *  iii.Update distances to all the neighbours
         */
        PriorityQueue<Vertex> PQ = new PriorityQueue<Vertex>();
        source = _source;
        source.distance = 0;
        PQ.add(source);

        while(!PQ.isEmpty()){

            Vertex u = PQ.poll();
            double vertexDistance = u.distance;
            ArrayList<Edge> vertexNeighbours = u.getNeighboursList();
            for(Edge neighbour : vertexNeighbours)
            {
               double costToDestination = neighbour.getCost();
               double newDistance = vertexDistance + costToDestination;

                Vertex destination = neighbour.getTo();
                if(destination.distance>newDistance){
                    // Remove the node and update it's distance
                    PQ.remove(destination);
                    destination.distance = newDistance;

                    // Add shortest path to this vertex at the final path [source -> destination]
                    destination.shortestPathList = new LinkedList<>(u.shortestPathList);
                    destination.addVertexToPath(u);

                    //Add the node back to the Queue, with it's new distance
                    PQ.add(destination);
                }
            }
        }
    }


}
