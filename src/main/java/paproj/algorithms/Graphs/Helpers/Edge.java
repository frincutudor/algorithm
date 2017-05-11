package paproj.algorithms.Graphs.Helpers;

import paproj.algorithms.Graphs.Algorithms.Dijkstra.Vertex;
/**
 * Created by Joywalker on 5/3/2017.
 */
public class Edge implements Comparable<Edge> {

    private int source,destination;
    private Vertex to;
    private double cost;

    //Kruskal
    public Edge(int source, int destination, double cost)
    {
        this.source = source;
        this.destination = destination;
        this.cost = cost;
    }
    public int getSource() {return source;}
    public int getDestination() {return  destination;}


        public Edge(Vertex _destination, double length) //add edge from current node to destination vertex
        {
            this.to = _destination; // destination vertex
            this.cost = length; //cost of the destination
        }

    public double getCost() {return this.cost;}
    public Vertex getTo() {return this.to;}

    //Comparator
    @Override
    public int compareTo(Edge other)
    {
        if(this.cost < other.cost)
            return -1;
        if(this.cost > other.cost)
            return 1;
        return 0;
    }
}
