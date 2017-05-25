package paproj.algorithms.codebase.sortings;

import java.util.ArrayList;
import java.util.Vector;

/**
 * Created by Joywalker on 4/5/2017.
 */

//TODO : @AlexIonut -> Make JSP + JavaScript ( angular method ) for this algorithm (HINT: look at the insertion sort one )
public class SelectionSort {

    // VectorToSort will be static, so we cannot change values
    private static Vector<Integer> vectorToSort;

    public static int[] selectionSort(int[] arr)
    {

        for (int i = 0; i < arr.length - 1; i++)
        {
            int index = i;
            for (int j = i + 1; j < arr.length; j++){
                if (arr[j] < arr[index]){
                    index = j;//searching for lowest index
                }
            }
            int smallerNumber = arr[index];
            arr[index] = arr[i];
            arr[i] = smallerNumber;
        }


        return arr;
    }


}
