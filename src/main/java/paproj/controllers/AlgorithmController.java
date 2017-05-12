package paproj.controllers;

import helperclasses.Edge;
import huffmanalgorithm.HuffmanCodeHelper;
import huffmanalgorithm.HuffmanNode;
import huffmanalgorithm.StringParser;
import kruskalalgorithm.GraphHelperImpl;
import kruskalalgorithm.Kruskal;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import paproj.helpers.commonhelpers.JSONParser;
import paproj.helpers.commonhelpers.KruskalObject;
import paproj.helpers.jsonbody.HuffmanBody;

import paproj.helpers.commonhelpers.Response;
import paproj.helpers.jsonbody.InsertionBody;
import paproj.helpers.jsonbody.KruskalBody;

import java.util.ArrayList;
import java.util.PriorityQueue;
import java.util.Set;

import static sortings.InsertionSort.insertionSort;
import static paproj.helpers.commonhelpers.InputParser.inputParser;
import static paproj.helpers.commonhelpers.InputParser.kruskalInputParser;

/**
 * Created by frincutudor on 3/10/17.
 */

// TODO: Get rid of jsp . HTML Config
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

    @RequestMapping(value="/home/kruskal")
    public ModelAndView homeKruskal()
    {
        return new ModelAndView("kruskal.jsp");
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

    @RequestMapping(value = "/home/huffman")
    public ModelAndView homeHuffman()
    {
        return new ModelAndView("huffman.jsp");
    }
    //TODO:clean
    @RequestMapping(value = "/algorithm/huffman" , method = RequestMethod.POST)
    public String huffmanSolver(@RequestBody HuffmanBody huffmanBody)
    {
        StringParser parser=new StringParser(huffmanBody.getHuffmanBody());
        HuffmanCodeHelper huffmanCodeHelper = new HuffmanCodeHelper(parser);
        PriorityQueue<HuffmanNode> priorityQueue=huffmanCodeHelper.getQueue();
        String JSON =JSONParser.JsonFormat(priorityQueue);
        StringBuilder stringBuffer = new StringBuilder(JSON);
        stringBuffer.insert(2,"\"nr\":\""+huffmanCodeHelper.getTreeSize()+"\",");
        String string = stringBuffer.toString();
        return string.substring(1,string.length()-1);
    }

    @RequestMapping(value="/algorithm/kruskal",method = RequestMethod.POST)
    public String kruskalSolver(@RequestBody KruskalBody kruskalBody)
    {
        String[] kBody = kruskalBody.getKruskalBody();
        KruskalObject kruskalObject=kruskalInputParser(kBody);
        GraphHelperImpl graphHelper = new GraphHelperImpl(kruskalObject.getNumberOfNodes());
        graphHelper.initGraph();
        for(Edge edge: kruskalObject.getEdges())
        {
            int source =  edge.getSource();
            int destination = edge.getDestination();
            double cost = edge.getCost();
            graphHelper.addEdge(source,destination,cost);
        }

        Set<Edge> finalSet = Kruskal.Kruskal(graphHelper.getGraph());
        return JSONParser.JsonFormat(finalSet);
    }

}
