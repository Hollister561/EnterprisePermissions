package com.permission.exception;

/**
 * @program: EnterprisePermissions
 * @description: 自定义异常类
 * @author: zhang yu
 * @create: 2019-12-11 14:23
 */

public class ParamException extends RuntimeException{
    public ParamException() {
        super();
    }

    public ParamException(String message) {
        super(message);
    }

    public ParamException(String message, Throwable cause) {
        super(message, cause);
    }

    public ParamException(Throwable cause) {
        super(cause);
    }

    protected ParamException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
