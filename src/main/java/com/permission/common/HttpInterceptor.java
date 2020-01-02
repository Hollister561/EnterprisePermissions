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
 * @description: http�����������
 * @author: zhang yu
 * @create: 2020-01-02 20:19
 */

@Slf4j
public class HttpInterceptor extends HandlerInterceptorAdapter {
    @Override
    //����֮ǰ
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURI();
        Map map = request.getParameterMap();
        log.info("preHandle��ȡ��URL:{},Params:{}",url, JsonMapper.obj2String(map));
        return true;
    }

    @Override
    //��������
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        String url = request.getRequestURI();
        Map map = request.getParameterMap();
        log.info("preHandle��ȡ��URL:{},Params:{}",url, JsonMapper.obj2String(map));
    }

    @Override
    //ȫ������ʱ�������쳣����
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        String url = request.getRequestURI();
        Map map = request.getParameterMap();
        log.info("preHandle��ȡ��URL:{},Params:{}",url, JsonMapper.obj2String(map));

    }
}
