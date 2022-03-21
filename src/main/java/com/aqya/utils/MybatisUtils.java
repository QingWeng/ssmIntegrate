package com.aqya.utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

/**
 * @author 阿青呀
 * @auther wenqing
 * @creat 2022-03-07 20:01
 */
public class MybatisUtils {



    private static SqlSessionFactory sqlSessionFactory;

   static{
        try {
            //使用mybatis第一步
            String resource = "mybatis-config.xml";

            InputStream  inputStream = Resources.getResourceAsStream(resource);

            sqlSessionFactory = new SqlSessionFactoryBuilder ().build(inputStream);

        } catch (IOException e) {
            e.printStackTrace ();
        }
       System.out.println ("1");
    }


    /**
     *     获取session实例
     */
    public static SqlSession getSqlSession(){

        return  sqlSessionFactory.openSession (true);
    }

}
