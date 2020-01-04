package com.permission.controller;

import com.permission.common.JsonData;
import com.permission.param.DeptParam;
import com.permission.service.SysDeptService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@Slf4j
@RequestMapping("sys/dept")
public class SysDeptController {

    @Resource
    private SysDeptService sysDeptService;

    @RequestMapping("/save.json")
    public JsonData save(DeptParam deptParam){
        sysDeptService.save(deptParam);
        return JsonData.success();
    }
}
