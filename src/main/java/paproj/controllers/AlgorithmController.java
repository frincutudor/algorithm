package paproj.controllers;


import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import paproj.algorithms.codebase.dijkstraalgorithm.DijkstraGraphHelperImpl;
import paproj.algorithms.codebase.dijkstraalgorithm.DijkstraShortestPath;
import paproj.algorithms.codebase.helperclasses.Edge;
import paproj.algorithms.codebase.huffmanalgorithm.HuffmanCodeHelper;
import paproj.algorithms.codebase.huffmanalgorithm.HuffmanNode;
import paproj.algorithms.codebase.huffmanalgorithm.StringParser;
import paproj.algorithms.codebase.kruskalalgorithm.GraphHelperImpl;
import paproj.algorithms.codebase.kruskalalgorithm.Kruskal;
import paproj.algorithms.codebase.ramerdouglaspakardalgorithm.Point;
import paproj.algorithms.dynamicProgramming.LCS;
import paproj.helpers.commonhelpers.GraphObject;
import paproj.helpers.commonhelpers.JSONParser;

import paproj.helpers.jsonbody.*;
import paproj.helpers.commonhelpers.Response;

import java.util.*;

import static paproj.algorithms.codebase.sortings.InsertionSort.insertionSort;
import static paproj.helpers.commonhelpers.InputParser.graphInputParser;
import static paproj.algorithms.codebase.ramerdouglaspakardalgorithm.RamerDouglasPeucker.RamerDouglasPeuckerFilter;
import static paproj.helpers.commonhelpers.InputParser.inputParser;

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
        stringBuffer.insert(2,"\"nrVertices\":\""+huffmanCodeHelper.getTreeSize()+"\",");
        String string = stringBuffer.toString();
        return string.substring(1,string.length()-1);
    }

    @RequestMapping(value="/algorithm/kruskal",method = RequestMethod.POST)
    public String kruskalSolver(@RequestBody KruskalBody kruskalBody)
    {
        String[] kBody = kruskalBody.getKruskalBody();
        GraphObject graphObject = graphInputParser(kBody);
        GraphHelperImpl graphHelper = new GraphHelperImpl(graphObject.getNumberOfNodes());
        graphHelper.initGraph();
        for (Edge edge : graphObject.getEdges())
        {
            int source = edge.getSource();
            int destination = edge.getDestination();
            double cost = edge.getCost();
            graphHelper.addEdge(source,destination,cost);
        }

        Set<Edge> finalSet = Kruskal.Kruskal(graphHelper.getGraph());
        return JSONParser.JsonFormat(finalSet);
    }

    @RequestMapping(value = "/home/dijkstra")
    public ModelAndView homeDijkstra()
    {
        return new ModelAndView("Dijkstra.jsp");
    }
    @RequestMapping(value="/algorithm/dijkstra",method = RequestMethod.POST)
    public String dijkstraSolver(@RequestBody DijkstraBody dijkstraBody)
    {
        String[] input =dijkstraBody.getDijkstraBody();
        int inputSize= input.length;
        GraphObject graphObject = graphInputParser(input);
        DijkstraGraphHelperImpl graphHelper = new DijkstraGraphHelperImpl(graphObject.getNumberOfNodes());
        for(Edge edge: graphObject.getEdges())
        {
            int source = edge.getSource();
            int destination = edge.getDestination();
            double cost = edge.getCost();
            graphHelper.addEdge(source,destination,cost);
        }
        //TODO : Get START NODE here

        int index =Integer.valueOf(input[inputSize-1]);
        DijkstraShortestPath.DijkstraShortestPath(graphHelper.getVertex(index));
        String JSON = JSONParser.JsonFormat(graphHelper.generateDijkstraResponse());
        StringBuilder stringBuffer = new StringBuilder(JSON);
        stringBuffer.insert(2,"\"nrVertices\":\""+graphHelper.getVertices().size()+"\",");
        return stringBuffer.toString();
    }

    @RequestMapping(value = "/home/lcs")
    public ModelAndView homeLCS()
    {
        return new ModelAndView("LCommonSubsequence.jsp");
    }
    @RequestMapping(value="/algorithm/LCommonSubsequence",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Response longestCommonSubsequence(@RequestBody LCSBody lcsBody)
    {
        Response response = new Response();
        String[] input = lcsBody.getLCSBody();
        response.setResponse(LCS.LCS(input[0],input[1]));

        return response;
    }

    @RequestMapping(value = "/home/rdp")
    public ModelAndView homeRamerDouglasPeuker()
    {
        return new ModelAndView("ramerdouglasp.jsp");
    }

    @RequestMapping(value="/algorithm/rdp",method = RequestMethod.POST)
    public Response solveRdp(@RequestBody RamerDouglasPBody rdpBody)
    {
        Response response= new Response();
        List<Point> points=RamerDouglasPeuckerFilter(rdpBody.getRdpBody(),0.025);
        response.setResponse(points.toString());
        return response;
    }


}
