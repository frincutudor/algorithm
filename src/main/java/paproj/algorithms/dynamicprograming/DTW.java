package paproj.algorithms.dynamicprograming;

public class DTW {

    private static float[] seq1;
    private static float[] seq2;
    private static int[][] warpingPath;

    private static int n;
    private static int m;
    private static int k;

    private static double warpingDistance;

    public static DTWObject DTW(float[] sequence1, float[] sequence2) {
        seq1 = sequence1;
        seq2 = sequence2;

        n = seq1.length;
        m = seq2.length;
        k = 1;

        warpingPath = new int[n + m][2]; //max(n,m)
        warpingDistance = 0.0;

        calc();

        return new DTWObject(warpingPath,warpingDistance);

    }

    public static void calc() {
        double accumulateDistance = 0.0;

        double[][] d = new double[n][m]; //local distance
        double[][] Table = new double[n][m]; //global distance

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                d[i][j] = distanceBetween(seq1[i], seq2[j]);
            }
        }

        for (int i = 1; i < n; i++) {
            Table[i][0] = Double.POSITIVE_INFINITY;
        }
        for (int i = 1; i < m; i++){
            Table[0][i] = Double.POSITIVE_INFINITY;
        }

        Table[0][0] = d[0][0];

        for (int i = 1; i < n; i++) {
            Table[i][0] = d[i][0] + Table[i - 1][0];
        }
        for (int j = 1; j < m; j++) {
            Table[0][j] = d[0][j] + Table[0][j - 1];
        }

        for (int i = 1; i < n; i++) {
            for (int j = 1; j < m; j++) {
                accumulateDistance = Math.min(Math.min(Table[i - 1][j], Table[i - 1][j - 1]), Table[i][j - 1]);
                accumulateDistance += d[i][j];
                Table[i][j] = accumulateDistance;
            }
        }
        accumulateDistance = Table[n - 1][m - 1];

        int i = n - 1;
        int j = m - 1;
        int minIndex = 1;

        warpingPath[k - 1][0] = i;
        warpingPath[k - 1][1] = j;

        while ((i + j) != 0) {
            if (i == 0) {
                j -= 1;
            } else if (j == 0) {
                i -= 1;
            } else {
                double[] array = {Table[i - 1][j], Table[i][j - 1], Table[i - 1][j - 1]};
                minIndex = getIndexOfMinimum(array);

                if (minIndex == 0) {
                    i -= 1;
                } else if (minIndex == 1) {
                    j -= 1;
                } else if (minIndex == 2) {
                    j -= 1;
                    j -= 1;
                }
            }
            k++;
            warpingPath[k - 1][0] = i;
            warpingPath[k - 1][1] = j;
        }
        warpingDistance = accumulateDistance / k;
        reversePath(warpingPath);


    }

    private static void reversePath(int[][] path) {
        int[][] newPath = new int[k][2];
        for (int i = 0; i < k; i++) {
            for (int j = 0; j < 2; j++) {
                newPath[i][j] = path[k - i - 1][j];

            }
        }
        warpingPath = newPath;
    }


    public static double distanceBetween(double p1, double p2) {
        return (p1 - p2) * (p1 - p2);
    }

    private static int getIndexOfMinimum(double[] array) {
        int index = 0;
        double val = array[0];

        for (int i = 1; i < array.length; i++) {
            if (array[i] < val) {
                val = array[i];
                index = i;
            }
        }
        return index;
    }


}