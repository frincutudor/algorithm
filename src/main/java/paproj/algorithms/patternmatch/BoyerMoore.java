package paproj.algorithms.patternmatch;

/**
 * Created by frincutudor on 5/14/17.
 */
public class BoyerMoore {

    private final int radix;
    private int[] right;
    private String pattern;

    public BoyerMoore(String pat) {
        this.radix = 256;
        this.pattern = pat;


        right = new int[radix];
        for (int c = 0; c < radix; c++)
            right[c] = -1;
        for (int j = 0; j < pat.length(); j++)
            right[pat.charAt(j)] = j;
    }

    public int search(String txt) {
        int m = pattern.length();
        int n = txt.length();
        int skip;
        for (int i = 0; i <= n - m; i += skip) {
            skip = 0;
            for (int j = m-1; j >= 0; j--) {
                if (pattern.charAt(j) != txt.charAt(i+j)) {
                    skip = Math.max(1, j - right[txt.charAt(i+j)]);
                    break;
                }
            }
            if (skip == 0) return i;
        }
        return -1;
    }

}
