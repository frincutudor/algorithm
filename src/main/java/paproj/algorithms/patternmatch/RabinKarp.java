package paproj.algorithms.patternmatch;

import java.math.BigInteger;
import java.util.Random;

public class RabinKarp {
    private String pattern;
    private long patternHash;
    private int patternSize;
    private long largePrime;
    private int radix;
    private long RM;         // radix^(M-1) % Q


    public RabinKarp(String pat) {
        this.pattern = pat;
        radix = 256;
        patternSize = pat.length();
        largePrime = longRandomPrime();


        RM = 1;
        for (int i = 1; i <= patternSize -1; i++)
            RM = (radix * RM) % largePrime;
        patternHash = hash(pat, patternSize);
    }


    private long hash(String key, int m) {
        long h = 0;
        for (int j = 0; j < m; j++)
            h = (radix * h + key.charAt(j)) % largePrime;
        return h;
    }


    private boolean check(String txt, int i) {
        for (int j = 0; j < patternSize; j++)
            if (pattern.charAt(j) != txt.charAt(i + j))
                return false;
        return true;
    }


    public int search(String txt) {
        int n = txt.length();
        if (n < patternSize) return n;
        long txtHash = hash(txt, patternSize);


        if ((patternHash == txtHash) && check(txt, 0))
            return 0;


        for (int i = patternSize; i < n; i++) {

            txtHash = (txtHash + largePrime - RM*txt.charAt(i- patternSize) % largePrime) % largePrime;
            txtHash = (txtHash* radix + txt.charAt(i)) % largePrime;


            int offset = i - patternSize + 1;
            if ((patternHash == txtHash) && check(txt, offset))
                return offset;
        }


        return -1;
    }



    private static long longRandomPrime() {
        BigInteger prime = BigInteger.probablePrime(31, new Random());
        return prime.longValue();
    }


}