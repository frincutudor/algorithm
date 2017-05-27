package paproj.algorithms.codebase.knapsackproblem;

/**
 * Created by Alex on 21.05.2017.
 */
public class Knapsack {

    private static int[] v; //contains the values of n objects
    private static int[] w; //contains the weight of n objects
    private static int n; // number of distinct items
    private static int W; //Knapsack capacity
    private static int[][] solution;

    public static KnapsackObject Knapsack(int[] values, int[] weight, int nItems, int WItems) {

        v = values;
        w = weight;
        n = nItems;
        W = WItems;

        for (int j = 0; j < W; j++) {
            solution[0][j] = 0;
        }
        for (int i = 1; i < n; i++) {
            for (int j = 0; j < W; j++) {
                if (w[i] > j)
                    solution[i][j] = solution[i - 1][j];
                else
                    solution[i][j] = Math.max(solution[i - 1][j], solution[i - 1][j - w[i]] + v[i]);
            }
        }
        return new KnapsackObject(solution[n][W]);
    }
}


