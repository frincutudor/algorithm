package paproj.helpers.common;

import com.sun.xml.internal.bind.v2.TODO;

import java.util.ArrayList;

import static paproj.algorithms.Sorting.InsertionSort.insertionSort;
import static paproj.helpers.common.InputParser.inputParser;


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


    //TODO: Create RequestHandler§
    public String solveInsertion()
    {
        return insertionSort(inputParser(request)).toString();
    }




}
