package paproj.codebase.Graphs;
import java.util.Vector;

/**
 * Created by Joywalker on 4/6/2017.
 */




public class AdjacencyList {
    private int nbOfNodes;
    private int nbEdges;
    private Vector<Vector<Integer>> AdjList;
    private void initGraph(int lv_nbNodes)
    {
        for(int i = 0 ; i < lv_nbNodes; i++ ){
            AdjList.addElement(new Vector<Integer>());
        }
    }
    private boolean isOK(int source)
    {
        if(source < 0 || source > nbOfNodes)
            return false;
        return true;
    }

    public int getNbOfNodes()
    {
        return nbOfNodes;
    }
    public int getNbEdges()
    {
        return nbEdges;
    }
    public void setNbOfNodes(int nbOfNodes)
    {
        this.nbOfNodes = nbOfNodes;
    }
    public void setNbEdges(int nbEdges)
    {
        this.nbEdges = nbEdges;
    }

    //TODO : add UI form here to get source -> destination
    public void addEdge(int source, int destination)
    {
        if(isOK(source) && isOK(destination))
            this.nbEdges++;
        AdjList.elementAt(source).add(destination);
        AdjList.elementAt(destination).add(source);
    }
    Vector<Vector<Integer>> printGraph()
    {
        //review this one
        return AdjList;
    }
    public AdjacencyList()
    {
        initGraph(0);
    }
    public AdjacencyList(int nbOfNodes)
    {
        initGraph(nbOfNodes);
    }
}
