package com.xingdian.demo;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//import ch.qos.logback.classic.LoggerContext;
//import ch.qos.logback.core.util.StatusPrinter;


/**
 * demo文件夹下的java文件均为延时Logback日志框架使用，没有其他用途，整个demo文件夹可删去
 */
public class LogbackDemo1 {

    public static void main(String[] args) {
        Logger logger = LoggerFactory.getLogger("com.xingdian.demo.LogbackDemo1");

        logger.info("Hello world");
        logger.error("world explosion ....");
        logger.debug("world repair ....");
        // 打印内部的状态
//        LoggerContext lc = (LoggerContext)LoggerFactory.getILoggerFactory();
//        StatusPrinter.print(lc);
    }
}