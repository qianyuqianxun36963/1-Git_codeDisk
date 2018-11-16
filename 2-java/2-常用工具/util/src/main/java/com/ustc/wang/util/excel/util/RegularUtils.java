package com.ustc.wang.util.excel.util;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegularUtils {
    public static boolean isMatched(String pattern, String reg) {
        Pattern compile = Pattern.compile(reg);
        return compile.matcher(pattern).matches();
    }

    public static List<String> match(String pattern, String reg, int group) {
        List<String> matchGroups = new ArrayList();
        Pattern compile = Pattern.compile(reg);
        Matcher matcher = compile.matcher(pattern);
        if (group <= matcher.groupCount() && group >= 0) {
            while(matcher.find()) {
                matchGroups.add(matcher.group(group));
            }

            return matchGroups;
        } else {
            return null;
        }
    }

    public static String match(String pattern, String reg) {
        String match = null;
        List<String> matches = match(pattern, reg, 0);
        if (null != matches && matches.size() > 0) {
            match = (String)matches.get(0);
        }

        return match;
    }

    public static String converNumByReg(String number) {
        Pattern compile = Pattern.compile("^(\\d+)(\\.0*)?$");

        for(Matcher matcher = compile.matcher(number); matcher.find(); number = matcher.group(1)) {
            ;
        }

        return number;
    }
}
