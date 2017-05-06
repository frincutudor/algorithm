package paproj.helpers.commonhelpers;

import static paproj.algorithms.sorting.InsertionSort.insertionSort;
import static paproj.helpers.commonhelpers.InputParser.inputParser;


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
