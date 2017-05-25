package paproj.algorithms.codebase.knapsackproblem;

/**
 * Created by Alex on 21.05.2017.
 */
public class Knapsack {

    private static double[] p; //contains the profit of n objects
    private static double[] w; //contains the weight of n objects
    private static double[] t; // solution vector

    public static KnapsackObject Knapsack(int m, int n) {
        //m is the knapsack size
        //n number of objects


        p = new double[n];
        w = new double[n];
        t = new double[n];


        unitPriceOrder();
        int j;
        for (j = 0; j < p.length; j++) {
            t[j] = 0;
        }
        double total = m;
        for (j = 0; j < p.length; j++) {
            if (w[j] <= total) {
                t[j] = 1.00;
                total = total - w[j];
            } else {
                break;// to exit the for-loop
            }
        }
        if (j < p.length) {
            t[j] = (total / w[j]);


        }
        return new KnapsackObject(p, w, t);
    }

    private static void unitPriceOrder() {
        for (int i = 0; i < p.length; i++) {
            for (int j = 1; j < (p.length - i); j++) {
                double x = p[j - 1] / w[j - 1];
                double y = p[j] / w[j];
                if (x <= y) {
                    double temp = p[j - 1];
                    p[j - 1] = p[j];
                    p[j] = temp;

                    double temp1 = w[j - 1];
                    w[j - 1] = w[j];
                    w[j] = temp1;
                }
            }
        }
    }
}
