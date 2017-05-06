package paproj.algorithms.Graphs.Algorithms.Kruskal;


/**
 * Created by Joywalker on 5/3/2017.
 */
public class Edge implements Comparable<Edge> {

    private int source,destination;
    int cost;
    public Edge(int source, int destination, int cost)
    {
        this.source = source;
        this.destination = destination;
        this.cost = cost;
    }

    @Override
    /**
     * sorting in queue
     */
    public int compareTo(Edge other)
    {
        if(this.cost < other.cost)
            return -1;
        if(this.cost > other.cost)
            return 1;
        return 0;
    }

    public int getSource() {return source;}
    public int getDestination() {return  destination;}

}
