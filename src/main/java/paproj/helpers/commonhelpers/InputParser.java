package paproj.helpers.commonhelpers;

import helperclasses.Edge;

import java.util.ArrayList;

/**
 * Created by frincutudor on 3/14/17.
*/
public class InputParser {


    //insertion sort
    public static ArrayList<Integer> inputParser(String stringToParse) {
        String strArray[] = new String[stringToParse.length() / 2];
        ArrayList<Integer> algorithmValues = new ArrayList<Integer>();
        String parsedString = stringToParse.replaceAll("^ +| +$|( )+", "$1");

        strArray = parsedString.split(" ");

        for (int i = 0; i < strArray.length; i++)
            algorithmValues.add(Integer.parseInt(strArray[i]));

        return algorithmValues;
    }


    public static GraphObject graphInputParser(String[] input) {
        ArrayList<Edge> edges = new ArrayList<Edge>();
        int numberOfNodes = Integer.valueOf(input[0]);

        for (int i = 1; i < input.length; i++) {
            String[] splitString = input[i].split(" ");
            int source = Integer.valueOf(splitString[0]);
            int destination = Integer.valueOf(splitString[1]);
            double cost = Integer.valueOf(splitString[2]);
            edges.add(new Edge(source, destination, cost));
        }
        return new GraphObject(edges, numberOfNodes);
    }
}