package paproj.config;

import com.sun.javafx.sg.prism.NGShape;
import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import paproj.helpers.RequestTemplate;
import paproj.helpers.Response;
import paproj.helpers.TextAreaBean;

import java.util.ArrayList;

import static paproj.algorithms.InsertionSort.insertionSort;
import static paproj.helpers.InputParser.inputParser;

/**
 * Created by frincutudor on 3/10/17.
 */


@RestController
@EnableAutoConfiguration
@RequestMapping("/")
public class AlgortihmController {

    @RequestMapping(value="/home" , method = RequestMethod.GET)
    public ModelAndView home()
    {

        ModelAndView  model = new ModelAndView("home");
        return model;

    }

    @RequestMapping(value="/algorithm")
    public ModelAndView algorithmHome()
    {

        return new ModelAndView("algorithm.jsp");

    }


    @Deprecated
    @RequestMapping(value="/algorithm/diverse")
    public ModelAndView algorithmDiverse()
    {

        return new ModelAndView("algorithm-insertion.jsp");

    }

    @RequestMapping(value="algorithm/answer")
    public ModelAndView algorithmAnswer(@ModelAttribute("datainsertion")TextAreaBean values )
    {


        ModelAndView model = new ModelAndView("done");


        return model;
    }

    @RequestMapping(value = "algorithm/insertion",method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Response insertionSort(@RequestBody RequestTemplate requestTemplate)//request body -> numbers
    {
       Response response = new Response();
       response.setResponse(requestTemplate.solveInsertion());

        return  response;
    }

}
