package com.permission.controller;

import com.permission.common.ApplicationContextHelper;
import com.permission.common.JsonData;
import com.permission.dao.SysAclModuleMapper;
import com.permission.exception.PermissionException;
import com.permission.model.SysAclModule;
import com.permission.param.TestVo;
import com.permission.util.BeanValidator;
import com.permission.util.JsonMapper;
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
            if(map != null && map.entrySet().size() >0){
                for(Map.Entry<String,String> entry : map.entrySet()){
                    log.info("{}->{}",entry.getKey(),entry.getValue());
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return JsonData.success("test validate");
    }

    @RequestMapping("/application.json")
    @ResponseBody
    public JsonData application(TestVo tv){
        log.info("application ...");
        SysAclModuleMapper moduleMapper = ApplicationContextHelper.popBean(SysAclModuleMapper.class);
        SysAclModule sysAclModule = moduleMapper.selectByPrimaryKey(1);
        log.info(JsonMapper.obj2String(sysAclModule));
        BeanValidator.check(tv);
        return JsonData.success("test application");
    }

}
