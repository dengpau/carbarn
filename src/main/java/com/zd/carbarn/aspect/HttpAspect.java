package com.zd.carbarn.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * aop 拦截
 */

@Aspect
@Component
public class HttpAspect {

    //日志记录
    private final static Logger logger = LoggerFactory.getLogger(HttpAspect.class);


    //在请求到达之前  拦截验证
    @Pointcut("execution(public * com.zd.carbarn.service..*.*(..))")
    public void log() {
    }

    @Before("log()")
    public void doBefore(JoinPoint joinPoint) {

        // 记录请求相关信息
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request =  attributes.getRequest();

        // url
        logger.info("url={}", request.getRequestURL());

        // 方法类型
        logger.info("method={}", request.getMethod());

        // ip
        logger.info("ip={}", request.getRemoteAddr());

        // 类方法
        logger.info("class_method={}", joinPoint.getSignature().getDeclaringTypeName() + "." +joinPoint.getSignature().getName());

        // 参数
        logger.info("args={}", joinPoint.getArgs());

    }

    //请求之后
    @After("log()")
    public void doAfter() {

        logger.info("本次请求结束");
    }

    //获取拦截请求返回的信息
    @AfterReturning(returning = "object", pointcut = "log()")
    public void getRet(Object object) {
        logger.info("response={}", object != null ? object.toString() : "结果为空");
    }

}
