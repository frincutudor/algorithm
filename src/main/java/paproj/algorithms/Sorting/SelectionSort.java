package paproj.algorithms.Sorting;


import java.util.Vector;

/**
 * Created by Alex on 03.05.2017.
 */
public class SelectionSort {

    public static Vector<Integer> selectionSort(Vector<Integer> vectorToSort) {
        int j, i, aux, min, minat;
        int vectorSize = vectorToSort.size();
        for (i = 0; i < vectorSize - 1; i++) {
            minat = i;
            min = vectorToSort.get(i);
            for (j = i + 1; j < vectorSize; j++) {
                if (min > vectorToSort.get(j)) {
                    minat = j;
                    min = vectorToSort.get(j);
                }
            }
            aux = vectorToSort.get(i);
            vectorToSort.set(i, minat);
            vectorToSort.set(minat, aux);
        }
        return vectorToSort;
    }
}
