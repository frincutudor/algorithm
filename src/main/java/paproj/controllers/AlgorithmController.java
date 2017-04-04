package paproj.controllers;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import paproj.helpers.insertion.InsertionBody;
import paproj.helpers.common.Response;

import java.util.ArrayList;

import static paproj.algorithms.InsertionSort.insertionSort;
import static paproj.helpers.common.InputParser.inputParser;

/**
 * Created by frincutudor on 3/10/17.
 */


@RestController
public class AlgorithmController {

    @RequestMapping(value="/algorithm")
    public ModelAndView algorithmHome()
    {

        return new ModelAndView("welcome.jsp");

    }

    @RequestMapping(value="/home")
    public ModelAndView home()
    {
        return new ModelAndView("welcome.jsp");
    }

    @RequestMapping(value="/home/insertion")
    public ModelAndView homeInsertion()
    {
        return new ModelAndView("insertion.jsp");
    }

    @RequestMapping(value = "/algorithm/insertion" , method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Response insertionSolver(@RequestBody InsertionBody insertionBody)
    {
        Response response= new Response();
        ArrayList<Integer> listToSort=inputParser(insertionBody.getInsertionBody());

        response.setResponse(insertionSort(listToSort).toString());

        return response;
    }


}
