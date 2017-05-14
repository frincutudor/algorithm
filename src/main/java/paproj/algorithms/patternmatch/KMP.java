package paproj.algorithms.patternmatch;

/**
 * Created by frincutudor on 5/14/17.
 */
public class KMP {
    private final int radix;
    private int[][] dfa;       // the KMP automoton


    private String pattern;


    public KMP(String pat) {
        this.radix = 256;
        this.pattern = pat;


        int m = pat.length();
        dfa = new int[radix][m];
        dfa[pat.charAt(0)][0] = 1;
        for (int x = 0, j = 1; j < m; j++) {
            for (int c = 0; c < radix; c++)
                dfa[c][j] = dfa[c][x];
            dfa[pat.charAt(j)][j] = j+1;
            x = dfa[pat.charAt(j)][x];
        }
    }



    public int search(String txt) {


        int m = pattern.length();
        int n = txt.length();
        int i, j;
        for (i = 0, j = 0; i < n && j < m; i++) {
            j = dfa[txt.charAt(i)][j];
        }
        if (j == m) return i - m;    // found
        return -1;                    // not found
    }

}
