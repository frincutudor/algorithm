package paproj.algorithms.Graphs.Algorithms.Kruskal;

/**
 * Created by Joywalker on 5/6/2017.
 */
public class UnionFind {

    private int[] parent;
    private byte[] rank;
    private int count;

    public UnionFind(int unionSize)
    {
        if(unionSize < 0) {
            throw new IllegalArgumentException();
        }
        this.count = unionSize;
        parent = new int[unionSize];
        rank = new byte[unionSize];
        for(int i = 0; i < unionSize; i++)
        {
            parent[i] = i;
            rank[i] = 0;
        }
    }

    public int find(int p) {
        validate(p);
        while (p != parent[p]) {
            parent[p] = parent[parent[p]];    // path compression by halving
            p = parent[p];
        }
        return p;
    }

    public boolean connected(int source,int destination)
    {
        return find(source) == find(destination);
    }

    public void validate(int vertex)
    {
        int treeLength = parent.length;
        if(vertex <0 || vertex > treeLength)
            throw  new IllegalArgumentException(vertex+"is not in between 0 and"+treeLength);
    }

    public void union(int source, int destination)
    {
        int rootSource = find(source);
        int rootDestination = find(destination);

        if(rootDestination == rootSource) return;
        if(rootSource < rootDestination) parent[rootSource] = rootDestination;
        else if (rootSource > rootDestination) parent[rootDestination] = rootSource;
        else
        {
            parent[rootDestination] = rootSource;
            rank[rootSource]++;
        }
        count--;
    }
}
