package paproj.algorithms.Graphs.HuffmanAlg.Main;

import java.util.PriorityQueue;
import java.util.Vector;
import paproj.algorithms.Graphs.HuffmanAlg.Utilities.*;
/**
 * Created by Joywalker on 4/9/2017.
 */
public class Main {

    public static void main(String args[])
    {
        StringParser stringParser = new StringParser("Mississippi");
        HuffmanCodeHelper huffmanHelper = new HuffmanCodeHelper(stringParser);
        HuffmanNode rootNode = huffmanHelper.getRootNode();
        PriorityQueue<HuffmanNode> tree = huffmanHelper.getQueue();

        //iterate tree and print codified message.

        huffmanHelper.iterateTree();
        //This will print our tree




    }
}
