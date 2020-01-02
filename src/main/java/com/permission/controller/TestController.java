package com.permission.controller;

import com.permission.common.JsonData;
import com.permission.exception.PermissionException;
import com.permission.param.TestVo;
import com.permission.util.BeanValidator;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@Controller
@RequestMapping("/test")
@Slf4j
public class TestController {

    @RequestMapping("/hello.json")
    @ResponseBody
    public JsonData hello(){
        log.info("hello...");
        throw new PermissionException("test Exception");
        //return JsonData.success("hello permission");
    }

    @RequestMapping("/validate.json")
    @ResponseBody
    public JsonData validate(TestVo tv){
        log.info("validate...");
        try{
            Map<String,String> map = BeanValidator.validateObject(tv);
            map.isEmpty();
        }catch (Exception e){
            e.printStackTrace();
        }
        return new JsonData(false);
    }

}
