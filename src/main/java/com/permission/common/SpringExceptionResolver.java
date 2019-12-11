package com.permission.common;

import com.permission.exception.ParamException;
import com.permission.exception.PermissionException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @program: EnterprisePermissions
 * @description: 全局异常处理
 * @author: zhang yu
 * @create: 2019-12-11 13:35
 */

@Slf4j
public class SpringExceptionResolver implements HandlerExceptionResolver {
    @Override
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {
        String url = httpServletRequest.getRequestURI();
        ModelAndView mv;
        String defaultMsg = "System error";

        if(url.endsWith(".json") & (e instanceof PermissionException | e instanceof ParamException)){
                JsonData result = JsonData.fail(e.getMessage());
                //jsonView来自spring-servlet.xml配置
                mv = new ModelAndView("jsonView",result.toMap());
                return mv;
        }else if(url.endsWith(".page")){
            log.error("unknown page exception,URL is "+ url,e);
            JsonData result = JsonData.fail(defaultMsg);
            mv = new ModelAndView("Exception",result.toMap());
            return mv;
        } else {
            log.error("unknown exception,URL is "+ url,e);
            JsonData result = JsonData.fail(defaultMsg);
            mv = new ModelAndView("jsonView",result.toMap());
        }
        return mv;
    }
}
