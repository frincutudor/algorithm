package paproj.config;

import com.sun.javafx.sg.prism.NGShape;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import paproj.helpers.TextAreaBean;

import java.util.ArrayList;

import static paproj.algorithms.InsertionSort.insertionSort;
import static paproj.helpers.InputParser.inputParser;

/**
 * Created by frincutudor on 3/10/17.
 */


@Controller
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

    @RequestMapping(value="/algorithm/diverse")
    public ModelAndView algorithmDiverse()
    {

        return new ModelAndView("algorithm-insertion.jsp");

    }

    @RequestMapping(value="algorithm/answer")
    public ModelAndView algorithmAnswer(@ModelAttribute("datainsertion")TextAreaBean values )
    {

        ArrayList<Integer> algorithmValues=new ArrayList<Integer>();
        ModelAndView model = new ModelAndView("done");

        algorithmValues=inputParser(values.getAlgorithmValues());

        algorithmValues=insertionSort(algorithmValues);

       // for(Integer i: algorithmValues)
           // System.out.println(i);

         //model.addObject("list",algorithmValues.toString());
            System.out.println(algorithmValues.toString()); // parse from int to String ;
        return model;
    }

}
