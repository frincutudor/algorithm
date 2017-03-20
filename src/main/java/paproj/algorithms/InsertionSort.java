package paproj.algorithms;

import java.util.ArrayList;
import java.util.Scanner;

/**
 * Created by frincutudor on 2/28/17.
 */
public class InsertionSort {

    public static ArrayList<Integer> insertionSort(ArrayList<Integer> listToSort)
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






    public static void main(String[] args )
    {


    }

}
