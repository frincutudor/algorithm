package paproj.algorithms.Sorting;

import java.util.Vector;

/**
 * Created by Joywalker on 4/5/2017.
 */
public class SelectionSort {

    // VectorToSort will be static, so we cannot change values
    private static Vector<Integer> vectorToSort;
    private int vectorSize;
    private void SelectionSort(Vector<Integer> vectorToSort,int vectorSize)
    {
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
    }
    public int getVectorSize() {
        return vectorSize;
    }
    public void setVectorSize(int vectorSize)
    {
        this.vectorSize = vectorSize;
    }
    public static Vector<Integer> printSortedVector()
    {
        //review this
        return vectorToSort;
    }
}
