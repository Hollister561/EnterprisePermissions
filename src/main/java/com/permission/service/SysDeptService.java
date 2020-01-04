package com.permission.service;


import com.permission.dao.SysDeptMapper;
import com.permission.exception.ParamException;
import com.permission.model.SysDept;
import com.permission.param.DeptParam;
import com.permission.util.BeanValidator;
import com.permission.util.Levelutil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

@Service
@Slf4j
public class SysDeptService {
    @Resource
    private SysDeptMapper sysDeptMapper;

    public void save(DeptParam deptParam){
        //1.进行校验
        BeanValidator.check(deptParam);
        //2.去重
        if (checkExist(deptParam.getParentId(),deptParam.getName(),deptParam.getId())) {
            throw new ParamException("Common deptName under common DeptLevel ");
        }
        SysDept sysDept = SysDept.builder().name(deptParam.getName())
                .parentId(deptParam.getParentId())
                .seq(deptParam.getSeq())
                .remark(deptParam.getRemark())
                .build();
        sysDept.setLevel(Levelutil.calculateLevel(getLevel(deptParam.getParentId()),deptParam.getParentId()));
        sysDept.setOperator("system"); //TODO
        sysDept.setOperateIp("127.0.0.1"); //TODO
        sysDept.setOperateTime(new Date());

        sysDeptMapper.insertSelective(sysDept);
    }

    private boolean checkExist(Integer parentId,String deptName,Integer deptId){
        //TODO;
        return true;
    }

    public String getLevel(Integer deptId){
        SysDept dept = sysDeptMapper.selectByPrimaryKey(deptId);
        if(dept == null){
            return null;
        }
        return dept.getLevel();
    }
}
