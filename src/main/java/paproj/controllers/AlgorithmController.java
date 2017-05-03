package paproj.controllers;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import paproj.algorithms.Sorting.SelectionSort;
import paproj.helpers.insertion.InsertionBody;
import paproj.helpers.common.Response;
import paproj.helpers.selection.SelectionBody;

import java.util.ArrayList;
import java.util.Vector;
import static paproj.algorithms.Sorting.SelectionSort.selectionSort;

import static paproj.algorithms.Sorting.InsertionSort.insertionSort;
import static paproj.helpers.common.InputParser.inputParser;

/**
 * Created by frincutudor on 3/10/17.
 */


@RestController
public class AlgorithmController {

    @RequestMapping(value = "/algorithm")
    public ModelAndView algorithmHome() {

        return new ModelAndView("welcome.jsp");

    }

    @RequestMapping(value = "/home")
    public ModelAndView home() {
        return new ModelAndView("welcome.jsp");
    }

    @RequestMapping(value = "/home/insertion")
    public ModelAndView homeInsertion() {
        return new ModelAndView("insertion.jsp");
    }

    @RequestMapping(value = "/algorithm/insertion", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Response insertionSolver(@RequestBody InsertionBody insertionBody) {
        Response response = new Response();
        Vector<Integer> listToSort = inputParser(insertionBody.getInsertionBody());
        response.setResponse(insertionSort(listToSort).toString());

        return response;
    }

    @RequestMapping(value = "/home/selection")
    public ModelAndView homeSelection() {
        return new ModelAndView("selection.jsp");
    }

    @RequestMapping(value = "/algorithm/selection", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Response SelectionSolver(@RequestBody SelectionBody selectionBody) {
        Response response = new Response();
        Vector<Integer> vectorToSort = inputParser(selectionBody.getSelectionBody());
        response.setResponse(selectionSort(vectorToSort).toString());


        return response;
    }
}