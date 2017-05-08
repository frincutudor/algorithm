package paproj.algorithms.Graphs.Algorithms.Kruskal;

import java.util.*;

/**
 * Created by Joywalker on 5/3/2017.
 */
public class Kruskal
{
    public HashMap<Vertex,ArrayList<Edge>> vertices;
    public static HashSet<Edge> finalList;
    public static HashSet<Edge> Kruskal(HashMap<Vertex,ArrayList<Edge>> vertexArrayListHashMap, Vertex source) {
        /**
         * Algorithm :
         * 1.Sort edges in priority queue
         * 2.Verify edges for each vertex, and select the one with min cost
         * 3.Check if it creates cycle
         * 4.Add to pathList of the verified node
         * 5.Get next edge
         */

        int graphSize = vertexArrayListHashMap.size();
        int finalListSize = finalList.size();
        PriorityQueue<Edge> edgesPQ = new PriorityQueue<>(graphSize - 1);
        for (Vertex vertex : vertexArrayListHashMap.keySet()) {
            Iterator<Edge> it = vertexArrayListHashMap.get(vertex).iterator();
            while (it.hasNext()) {
                //add edge to queue
                edgesPQ.add(it.next());
            }
        }

        source.setVisited();
        while (finalListSize < graphSize - 1) {
            //extract from PQ
            Edge current = edgesPQ.poll();
            if (!finalList.contains(current.getDestination())) {
                finalList.add(current);
            }
        }
        return finalList;
    }
}
