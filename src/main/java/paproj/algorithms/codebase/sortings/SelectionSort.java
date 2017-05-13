package paproj.algorithms.codebase.sortings;

import java.util.Vector;

/**
 * Created by Joywalker on 4/5/2017.
 */

//TODO : @AlexIonut -> Make JSP + JavaScript ( angular method ) for this algorithm (HINT: look at the insertion sort one )
public class SelectionSort {

    // VectorToSort will be static, so we cannot change values
    private static Vector<Integer> vectorToSort;

    private static Vector<Integer> selectionSort(Vector<Integer> vectorToSort)
    {
        int vectorSize=vectorToSort.size();
        int j,i,aux,min,minat;
        for(i = 0; i < vectorSize -1;i++)
        {
            minat = i;
            min = vectorToSort.get(i);
            for(j = i+1 ;j<vectorSize;j++)
            {
                if(min > vectorToSort.get(j))
                {
                    minat = j;
                    min = vectorToSort.get(j);
                }
            }
            aux = vectorToSort.get(i);
            vectorToSort.set(i,minat);
            vectorToSort.set(minat,aux);
        }

        return vectorToSort;
    }

    /*public static Vector<Integer> printSortedVector()
    {
        //review this
        return vectorToSort;
    }*/
}
