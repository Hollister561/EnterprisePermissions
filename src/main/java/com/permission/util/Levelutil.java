package com.permission.util;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;

//获取层级关系
@Slf4j
public class Levelutil {
    private static final String SEPARATOR = ".";
    private static final String ROOT = "0";

    public static String calculateLevel(String parentLevel,Integer parentId){
        if(StringUtils.isNotBlank(parentLevel)){
            return ROOT;
        }else {
            return StringUtils.join(parentLevel,SEPARATOR,parentId);
        }
    }
}
