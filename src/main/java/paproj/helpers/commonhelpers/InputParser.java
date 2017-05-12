package paproj.helpers.commonhelpers;
import helperclasses.Edge;

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

    public static KruskalObject kruskalInputParser(String[] input)
    {
        ArrayList<Edge> edges = new ArrayList<Edge>();
        int numberOfNodes=Integer.valueOf(input[0]);

        for(int i=1;i<input.length;i++)
        {
            String[] splitString=input[i].split(" ");
            edges.add(new Edge(Integer.valueOf(splitString[0]),Integer.valueOf(splitString[1]),Double.valueOf(splitString[2])));
        }
        return new KruskalObject(edges,numberOfNodes);

    }
}
