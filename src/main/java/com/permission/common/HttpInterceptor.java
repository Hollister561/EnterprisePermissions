package com.permission.common;

import com.permission.util.JsonMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * @program: EnterprisePermissions
 * @description: http请求监听工具
 * @author: zhang yu
 * @create: 2020-01-02 20:19
 */

@Slf4j
public class HttpInterceptor extends HandlerInterceptorAdapter {
    @Override
    //请求之前
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURI();
        Map map = request.getParameterMap();
        log.info("preHandle获取的URL:{},Params:{}",url, JsonMapper.obj2String(map));
        return true;
    }

    @Override
    //正常结束
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        String url = request.getRequestURI();
        Map map = request.getParameterMap();
        log.info("preHandle获取的URL:{},Params:{}",url, JsonMapper.obj2String(map));
    }

    @Override
    //全部结束时，包括异常结束
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        String url = request.getRequestURI();
        Map map = request.getParameterMap();
        log.info("preHandle获取的URL:{},Params:{}",url, JsonMapper.obj2String(map));

    }
}
