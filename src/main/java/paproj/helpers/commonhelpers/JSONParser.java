package paproj.helpers.commonhelpers;

import com.google.gson.Gson;
import paproj.algorithms.Graphs.Algorithms.HuffmanCoding.HuffmanNode;
import paproj.algorithms.Graphs.Algorithms.RamerDouglasPeucker.Point;

import java.util.List;
import java.util.PriorityQueue;

/**
 * Created by Joywalker on 4/27/2017.
 */
public class JSONParser {

    /*
    private JsonParser jsonParser;
    private JsonElement jsonElement;
    private JsonObject parent;
    private JsonArray childrens;
    public JSONParser(String jsonString) {
        jsonParser = new JsonParser();
        jsonElement = jsonParser.parse(jsonString);

        if (jsonElement.isJsonObject()) {
            parent = jsonElement.getAsJsonObject();
            childrens = parent.getAsJsonArray("left");
            for (int i = 0; i < childrens.size(); i++) {
                parent = childrens.get(i).getAsJsonObject();
            }
        }
    }*/
    public static String JsonFormat(PriorityQueue<HuffmanNode> binaryTree)
    {
        return new Gson().toJson(binaryTree);
    }

    public static String JsonFormat(List<Point> points)
    {
        return new Gson().toJson(points);
    }
}
