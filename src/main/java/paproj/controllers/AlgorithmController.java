package paproj.controllers;


import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import paproj.algorithms.codebase.convexhull.ConvexHull;
import paproj.algorithms.codebase.dijkstraalgorithm.DijkstraGraphHelperImpl;
import paproj.algorithms.codebase.dijkstraalgorithm.DijkstraShortestPath;
import paproj.algorithms.codebase.dijkstraalgorithm.DijkstraWrapper;
import paproj.algorithms.codebase.dijkstraalgorithm.DijktraResponse;
import paproj.algorithms.codebase.helperclasses.Edge;
import paproj.algorithms.codebase.huffmanalgorithm.HuffmanCodeHelper;
import paproj.algorithms.codebase.huffmanalgorithm.HuffmanNode;
import paproj.algorithms.codebase.huffmanalgorithm.StringParser;
import paproj.algorithms.codebase.knapsackproblem.KnapsackObject;
import paproj.algorithms.codebase.kruskalalgorithm.GraphHelperImpl;
import paproj.algorithms.codebase.kruskalalgorithm.Kruskal;

import paproj.algorithms.codebase.helperclasses.Point;


import paproj.algorithms.dynamicprograming.DTWObject;
import paproj.algorithms.patternmatch.BoyerMoore;
import paproj.algorithms.patternmatch.KMP;
import paproj.helpers.commonhelpers.GraphObject;
import paproj.helpers.commonhelpers.JSONParser;

import paproj.algorithms.patternmatch.RabinKarp;

import paproj.helpers.commonhelpers.PatternMatchRespone;
import paproj.helpers.jsonbody.*;
import paproj.helpers.commonhelpers.Response;

import java.util.*;

import static paproj.algorithms.codebase.convexhull.ConvexHull.QuickHull;
import static paproj.algorithms.codebase.sortings.InsertionSort.insertionSort;
import static paproj.algorithms.dynamicprograming.LongestCommonSubsequence.lcsSolver;
import static paproj.helpers.commonhelpers.InputParser.graphInputParser;
import static paproj.algorithms.codebase.ramerdouglaspakardalgorithm.RamerDouglasPeucker.RamerDouglasPeuckerFilter;
import static paproj.helpers.commonhelpers.InputParser.inputParser;
import static paproj.algorithms.dynamicprograming.DTW.DTW;
import static paproj.algorithms.codebase.knapsackproblem.Knapsack.Knapsack;
import static paproj.algorithms.codebase.sortings.BubbleSort.bubbleSort;

/**
 * Created by frincutudor on 3/10/17.
 */

// TODO: Get rid of jsp . HTML Config
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

    @RequestMapping(value = "/home/kruskal")
    public ModelAndView homeKruskal() {
        return new ModelAndView("kruskal.jsp");
    }


    @RequestMapping(value = "/home/insertion")
    public ModelAndView homeInsertion() {
        return new ModelAndView("insertion.jsp");
    }

    @RequestMapping(value = "/algorithm/insertion", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Response insertionSolver(@RequestBody InsertionBody insertionBody) {
        Response response = new Response();
        ArrayList<Integer> listToSort = inputParser(insertionBody.getInsertionBody());
        response.setResponse(insertionSort(listToSort).toString());

        return response;
    }

    @RequestMapping(value = "/home/huffman")
    public ModelAndView homeHuffman() {
        return new ModelAndView("huffman.jsp");
    }

    //TODO:clean
    @RequestMapping(value = "/algorithm/huffman", method = RequestMethod.POST)
    public String huffmanSolver(@RequestBody HuffmanBody huffmanBody) {
        StringParser parser = new StringParser(huffmanBody.getHuffmanBody());
        HuffmanCodeHelper huffmanCodeHelper = new HuffmanCodeHelper(parser);
        PriorityQueue<HuffmanNode> priorityQueue = huffmanCodeHelper.getQueue();
        String JSON = JSONParser.JsonFormat(priorityQueue);
        StringBuilder stringBuffer = new StringBuilder(JSON);
        stringBuffer.insert(2, "\"nrVertices\":\"" + huffmanCodeHelper.getTreeSize() + "\",");
        String string = stringBuffer.toString();
        return string.substring(1, string.length() - 1);
    }

    @RequestMapping(value = "/algorithm/kruskal", method = RequestMethod.POST)
    public String kruskalSolver(@RequestBody KruskalBody kruskalBody) {
        String[] kBody = kruskalBody.getKruskalBody();
        GraphObject graphObject = graphInputParser(kBody);
        GraphHelperImpl graphHelper = new GraphHelperImpl(graphObject.getNumberOfNodes());
        graphHelper.initGraph();
        for (Edge edge : graphObject.getEdges()) {
            int source = edge.getSource();
            int destination = edge.getDestination();
            double cost = edge.getCost();
            graphHelper.addEdge(source, destination, cost);
        }

        Set<Edge> finalSet = Kruskal.Kruskal(graphHelper.getGraph());
        return JSONParser.JsonFormat(finalSet);
    }

    @RequestMapping(value = "/home/dijkstra")
    public ModelAndView homeDijkstra() {
        return new ModelAndView("Dijkstra.jsp");
    }

    @RequestMapping(value = "/algorithm/dijkstra", method = RequestMethod.POST)
    public DijktraResponse dijkstraSolver(@RequestBody DijkstraBody dijkstraBody) {
        String[] input = dijkstraBody.getDijkstraBody();
        int inputSize = input.length;
        GraphObject graphObject = graphInputParser(input);
        DijkstraGraphHelperImpl graphHelper = new DijkstraGraphHelperImpl(graphObject.getNumberOfNodes());
        graphHelper.initGraph();
        for (Edge edge : graphObject.getEdges()) {
            int source = edge.getSource();
            int destination = edge.getDestination();
            double cost = edge.getCost();
            graphHelper.addEdge(source, destination, cost);
        }
        //TODO : Get START NODE here

        int index = Integer.valueOf(input[inputSize - 1]);
        DijkstraShortestPath.DijkstraShortestPath(graphHelper.getVertex(index));

        Map<ArrayList<Integer>, Double> wrapperMap = graphHelper.generateDijkstraResponse();
        ArrayList<DijkstraWrapper> wrapper = new ArrayList<DijkstraWrapper>();

        for (Map.Entry<ArrayList<Integer>, Double> entry : wrapperMap.entrySet()) {
            wrapper.add(new DijkstraWrapper(entry.getValue(), entry.getKey()));
        }

//        String JSON = JSONParser.JsonFormat(graphHelper.generateDijkstraResponse());
//        StringBuilder stringBuffer = new StringBuilder(JSON);
//        //stringBuffer.insert(2,"\"nrVertices\":\""+graphHelper.getVertices().size()+"\",");
//

        DijktraResponse response = new DijktraResponse();
        response.setNrNodes(graphHelper.getVertices().size());
        response.setOutput(wrapper);
        return response;


    }

    @RequestMapping(value = "/home/lcs")
    public ModelAndView homeLCS() {
        return new ModelAndView("lcs.jsp");
    }

    @RequestMapping(value = "/algorithm/lcs", method = RequestMethod.POST)
    public Response longestCommonSubsequence(@RequestBody LCSBody lcsBody) {
        Response response = new Response();

        String[] input = lcsBody.getLcsBody().split("\\s+");
        response.setResponse(lcsSolver(input[0], input[1]));

        return response;
    }

    @RequestMapping(value = "/home/boyer/moore")
    public ModelAndView homeBoyerMoore() {
        return new ModelAndView("boyermoore.jsp");
    }

    @RequestMapping(value = "/algorithm/boyer/moore", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public PatternMatchRespone solveBoyerMoore(@RequestBody BoyerMooreBody bmBody) {
        PatternMatchRespone response = new PatternMatchRespone();
        String[] input = bmBody.getBmBody().split("\\s+");
        String pattern = input[0];
        String text = input[1];

        BoyerMoore boyerMoore = new BoyerMoore(pattern);
        response.setPattern(pattern);
        response.setText(text);
        response.setPosition(boyerMoore.search(text));

        return response;
    }

    @RequestMapping(value = "/home/rdp")
    public ModelAndView homeRamerDouglasPeuker() {
        return new ModelAndView("ramerdouglasp.jsp");
    }


    //TODO:check if algorithm works
    @RequestMapping(value = "/algorithm/rdp", method = RequestMethod.POST)
    public Response solveRdp(@RequestBody RamerDouglasPBody rdpBody) {
        List<Point> points = new ArrayList<Point>();

        Response response = new Response();
        String[] input = rdpBody.getRdpBody().split(",");
        for (int i = 0; i < input.length; i++) {
            String[] coords = input[i].split("\\s+");
            points.add(new Point(Double.valueOf(coords[0]), Double.valueOf(coords[1])));
        }

        List<Point> output = RamerDouglasPeuckerFilter(points, Double.valueOf(rdpBody.getEpsilon()));
        response.setResponse(output.toString());
        return response;
    }


    @RequestMapping(value = "/home/kmp")
    public ModelAndView homeKmp() {
        return new ModelAndView("kmp.jsp");
    }

    @RequestMapping(value = "/algorithm/kmp", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public PatternMatchRespone solveKMP(@RequestBody KMPBody kmpBody) {
        PatternMatchRespone response = new PatternMatchRespone();
        String[] input = kmpBody.getKmpBody().split("\\s+");
        String pattern = input[0];
        String text = input[1];

        KMP kmp = new KMP(pattern);
        response.setPattern(pattern);
        response.setText(text);
        response.setPosition(kmp.search(text));

        return response;
    }

    @RequestMapping(value = "/home/rabin/karp")
    public ModelAndView homeRabinKarp() {
        return new ModelAndView("rabinkarp.jsp");
    }

    @RequestMapping(value = "/algorithm/rabin/karp", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public PatternMatchRespone solveBoyerMoore(@RequestBody RabinKarpBody rkBody) {
        PatternMatchRespone response = new PatternMatchRespone();
        String[] input = rkBody.getRkBody().split("\\s+");
        String pattern = input[0];
        String text = input[1];

        RabinKarp rabinKarp = new RabinKarp(pattern);
        response.setPattern(pattern);
        response.setText(text);
        response.setPosition(rabinKarp.search(text));

        return response;
    }

    @RequestMapping(value = "/home/hull")
    public ModelAndView homeQuickHull()
    {
        return new ModelAndView("qhull.jsp");
    }

    @RequestMapping(value="/algorithm/hull",method = RequestMethod.POST)
    public Response quickHullSolver(@RequestBody QuickHullBody hullValues)
    {
        ArrayList<Point> points = new ArrayList<Point>() ;

        Response response= new Response();
        String[] input = hullValues.getHullValues().split(",");
        for(int i=0;i<input.length;i++)
        {
            String[] coords=input[i].split("\\s+");
            Double X = Double.valueOf(coords[0]);
            Double Y = Double.valueOf(coords[1]);
            points.add(new Point(X,Y));
        }
        ArrayList<Point> result = ConvexHull.QuickHull(points);
        response.setResponse(result.toString());
        return  response;
    }
    @RequestMapping(value = "/home/dtw")
    public ModelAndView homeDynamicTimeWarping() {
        return new ModelAndView("dtw.jsp");
    }


    @RequestMapping(value = "/algorithm/dtw", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public DTWObject solveDynamicTimeWarping(@RequestBody DTWBody dtwBody) {
        PatternMatchRespone response = new PatternMatchRespone();
        String[] input = dtwBody.getDtwBody();
        String seq1 = input[0];
        String seq2 = input[1];
        String[] s1 = seq1.split("\\s+");
        String[] s2 = seq2.split("\\s+");
        int i = 0;
        float[] floatSeq1 = new float[s1.length];
        float[] floatSeq2 = new float[s2.length];
        for (String s : s1) {
            floatSeq1[i] = Float.parseFloat(s);
            i++;
        }
        i = 0;
        for (String s : s2) {
            floatSeq2[i] = Float.parseFloat(s);
            i++;
        }


        return DTW(floatSeq1, floatSeq2);
    }


    @RequestMapping(value = "/home/knapsack")
    public ModelAndView homeKnapsackProblem() {
        return new ModelAndView("knapsack.jsp");
    }

    @RequestMapping(value = "/algorithm/knapsack", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public KnapsackObject solveKnapsackProblem(@RequestBody KnapsackBody kBody) {

        String[] input = kBody.getKBody();
        String nObjects = input[0];
        String tWeight = input[1];
        String[] s1 = nObjects.split("\\s+");
        String[] s2 = tWeight.split("\\s+");
    //TODO: bad implementation n,m and s1,s2 will fix after knapsac review
        int m = s1.length;
        int n = s2.length;

        int i = 0;
        for (String s : s1) {
            m = Integer.parseInt(s);
            i++;
        }
        i = 0;
        for (String s : s2) {
            n = Integer.parseInt(s);
            i++;
        }


        return Knapsack(m, n);

    }

    @RequestMapping(value = "/home/bubblesort")
    public ModelAndView homeBubbleSort() {
        return new ModelAndView("bublesort.jsp");
    }

    @RequestMapping(value = "/algorithm/bubblesort", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public Response bubbleSortSolver(@RequestBody BubbleSortBody bsBody) {
        Response response = new Response();
        String[] input = bsBody.getBsBody().split("\\s+");
        int[] value=new int[input.length];
        int i=0;
        for(String s:input)
        {
            value[i]=Integer.parseInt(s);
            i++;
        }


        response.setResponse(bubbleSort(value).toString());

        return response;
    }
}
