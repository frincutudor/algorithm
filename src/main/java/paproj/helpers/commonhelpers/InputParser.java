
package paproj.helpers.commonhelpers;
import java.util.ArrayList;

/**
 * Created by frincutudor on 3/14/17.
*/
public class InputParser {



    public static ArrayList<Integer> inputParser(String stringToParse)
    {
        String strArray[] = new String[stringToParse.length()/2];
        ArrayList<Integer> algorithmValues = new ArrayList<Integer>();
        String parsedString=stringToParse.replaceAll("^ +| +$|( )+", "$1");

        strArray =parsedString.split(" ");

        for(int i=0;i<strArray.length;i++)
            algorithmValues.add(Integer.parseInt(strArray[i]));

        return algorithmValues;

    }
}
