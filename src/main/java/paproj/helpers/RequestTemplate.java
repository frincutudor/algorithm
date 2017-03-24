package paproj.helpers;

import java.util.ArrayList;

import static paproj.algorithms.InsertionSort.insertionSort;
import static paproj.helpers.InputParser.inputParser;

/**
 * Created by frincutudor on 3/24/17.
 */
public class RequestTemplate {

    String request;

    public String getRequest() {
        return request;
    }

    public void setRequest(String request) {
        this.request = request;
    }



    public String solveInsertion()
    {
        ArrayList<Integer> algorithmValues=new ArrayList<Integer>();
        algorithmValues=inputParser(request);

        algorithmValues=insertionSort(algorithmValues);

        return algorithmValues.toString();
    }




}
