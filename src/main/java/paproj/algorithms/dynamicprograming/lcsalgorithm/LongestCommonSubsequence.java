package paproj.algorithms.dynamicprograming.lcsalgorithm;

/**
 * Created by frincutudor on 5/13/17.
 */
public class LongestCommonSubsequence {

    public static String lcsSolver(String first, String second) {
        int firstLen = first.length();
        int secondLen = second.length();

        int[][] lcsMatrix = new int[firstLen + 1][secondLen + 1];

        for (int i = firstLen - 1; i >= 0; i--) {
            for (int j = secondLen - 1; j >= 0; j--) {
                if (first.charAt(i) == second.charAt(j))
                    lcsMatrix[i][j] = lcsMatrix[i + 1][j + 1] + 1;
                else
                    lcsMatrix[i][j] = Math.max(lcsMatrix[i + 1][j], lcsMatrix[i][j + 1]);
            }
        }
        //Reconstructing the string consisting of the lcsAlgorithm
        int i = 0, j = 0;
        StringBuilder sb = new StringBuilder();
        while (i < firstLen && j < secondLen) {
            if (first.charAt(i) == second.charAt(j)) {
                sb.append(first.charAt(i));
                i++; //jump one line
                j++; //jump one column
            } else if (lcsMatrix[i + 1][j] >= lcsMatrix[i][j + 1])
                i++; // increase line
            else
                j++; // increase column
        }
        return sb.toString();
    }
}
