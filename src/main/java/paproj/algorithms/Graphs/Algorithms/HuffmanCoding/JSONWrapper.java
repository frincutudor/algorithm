package paproj.algorithms.Graphs.Algorithms.HuffmanCoding;

import java.util.PriorityQueue;

/**
 * Created by frincutudor on 5/4/17.
 */
public class JSONWrapper {

    PriorityQueue<HuffmanNode> priorityQueue;
    String size;

    public JSONWrapper(PriorityQueue<HuffmanNode> priorityQueue,String size) {
        this.priorityQueue = priorityQueue;
        this.size= size;
    }
}
