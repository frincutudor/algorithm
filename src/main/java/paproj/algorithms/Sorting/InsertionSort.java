package paproj.algorithms.Sorting;

import java.util.ArrayList;
import java.util.Vector;

/**
 * Created by Joywalker on 4/4/2017.
 */

public class InsertionSort {

    public static Vector<Integer> insertionSort(Vector<Integer> listToSort)
    {
        int i , j;
        int key;
        for(j=1;j<listToSort.size();j++)
        {
            key=listToSort.get(j);
            i=j-1;
            while(i>=0 && listToSort.get(i)>key)
            {
                listToSort.set(i+1,listToSort.get(i));
                i--;
            }
            listToSort.set(i+1, key);
        }
        return listToSort;
    }
}
