package kruskalalgorithm;

import helperclasses.Edge;

import java.util.*;
/**
 * Created by Joywalker on 5/3/2017.
 */
public class Kruskal
{
    public static Set<Edge> Kruskal(HashMap<Integer,ArrayList<Edge>> vertexArrayListHashMap) {
        /**
         * Algorithm :
         * 1.Sort edges in priority queue
         * 2.Verify edges for each vertex, and select the one with min cost
         * 3.Check if it creates cycle
         * 4.Add to pathList of the verified node
         * 5.Get next edge
         */
        int graphSize = vertexArrayListHashMap.size();
        Set<Edge> minSpawnTree = new HashSet<Edge>();
        PriorityQueue<Edge> edgesPQ = new PriorityQueue<>(graphSize - 1);
        List<Edge> edges = new ArrayList<>();
        for (Integer integer : vertexArrayListHashMap.keySet()) {
            Iterator<Edge> it = vertexArrayListHashMap.get(integer).iterator();
            while (it.hasNext()) {
                //add edge to queue
                edges.add(it.next());
            }
        }
        Collections.sort(edges);
        edgesPQ.addAll(edges);
        UnionFind UF = new UnionFind(graphSize);
        while (!edgesPQ.isEmpty() && minSpawnTree.size() < graphSize-1) {
            //extract from PQ
            Edge current = edgesPQ.poll();
            int source = current.getSource();
            int destination = current.getDestination();

            if (!UF.connected(source, destination)) {
                UF.union(source, destination);
                minSpawnTree.add(current);
            }
        }
        return minSpawnTree;
    }
}
