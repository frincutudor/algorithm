package paproj.algorithms.Graphs.Algorithms.Kruskal;

import java.util.LinkedList;

/**
 * Created by Joywalker on 5/3/2017.
 */
public class Vertex  {

    private int value;
    private boolean isVisited = false;
    private LinkedList<Vertex> pathList;
    public void addVertexToPath(Vertex visitedVertex) { pathList.add(visitedVertex);}
    public LinkedList<Vertex> getPathList(){return pathList;}

    public Vertex(int value)
    {
        this.value = value;
    }
    public void setVisited()
    {
        this.isVisited = true;
    }
    public boolean getVisited() {return isVisited;}

}
