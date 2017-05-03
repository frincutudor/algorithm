
package paproj.helpers.common;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Vector;

/**
 * Created by frincutudor on 3/14/17.
*/
public class InputParser {



    public static Vector<Integer> inputParser(String stringToParse)
    {
        String strArray[] = new String[stringToParse.length()/2];
        Vector<Integer> algorithmValues = new Vector<Integer>();
        String parsedString=stringToParse.replaceAll("^ +| +$|( )+", "$1");

        strArray =parsedString.split(" ");

        for(int i=0;i<strArray.length;i++)
            algorithmValues.add(Integer.parseInt(strArray[i]));

        return algorithmValues;

    }
}
