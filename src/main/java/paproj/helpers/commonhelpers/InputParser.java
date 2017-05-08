
package paproj.helpers.commonhelpers;
import paproj.algorithms.Graphs.Algorithms.Dijkstra.Edge;

import java.util.ArrayList;

/**
 * Created by frincutudor on 3/14/17.
*/
public class InputParser {


    //insertion sort
    public static ArrayList<Integer> inputParser(String stringToParse)
    {
        String strArray[] = new String[stringToParse.length()/2];
        ArrayList<Integer> algorithmValues = new ArrayList<Integer>();
        String parsedString=stringToParse.replaceAll("^ +| +$|( )+", "$1");

        strArray =parsedString.split(" ");

        for(int i=0;i<strArray.length;i++)
            algorithmValues.add(Integer.parseInt(strArray[i]));

        return algorithmValues;

    }

    public static ArrayList<Edge> dijsktraInputParser(String[] input)
    {
        ArrayList<Edge> edges;
        int index=0;
        for(String string: input)
        {
            String[] helper = string.split(" ");
            //edges.add(index,new Edge(Integer.valueOf(helper[0]),Integer.valueOf(helper[1]),Double.valueOf(helper[2])));


        }




        return null;
    }
}
