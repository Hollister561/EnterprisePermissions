package com.permission.common;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * @program: EnterprisePermissions
 * @description:
 * @author: zhang yu
 * @create: 2019-12-11 12:41
 */

@Getter
@Setter
public class JsonData {
    private boolean ret;
    private String msg;
    private Object data;

    public JsonData(Boolean ret){
        this.ret = ret;
    }

    public static JsonData success(Object object,String msg){
        JsonData jsonData = new JsonData(true);
        jsonData.data = object;
        jsonData.msg = msg;
        return jsonData;
    }

    public static JsonData success(Object object){
        JsonData jsonData = new JsonData(true);
        jsonData.data = object;
        return jsonData;
    }

    public static JsonData success(){
        return new JsonData(true);
    }

    public static JsonData fail(String msg){
        JsonData jsonData = new JsonData(false);
        jsonData.msg = msg;
        return jsonData;
    }
}
