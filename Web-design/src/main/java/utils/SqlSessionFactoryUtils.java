package utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import java.io.InputStream;

/**
 * 工具类 ：提供sqlsession的配置工具
 */
public class SqlSessionFactoryUtils {
    //配置文件的路径
    private static String RESOURCE = "mybatis.xml";

    private static SqlSessionFactory sqlSessionFactory;

    private static ThreadLocal<SqlSession> threadLocal = new ThreadLocal<SqlSession>();

    /**
     *初始化对象工厂
     */
    public static void initSqlSessionFactry(){
        try {
            InputStream inputStream = Resources.getResourceAsStream(RESOURCE);

            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    /**
     * 获取工厂对象的方法
     */
    public static SqlSessionFactory getSqlSessionFactory() {
        return sqlSessionFactory;
    }

    /**
     * 关闭sqlsession的方法
     */
    public static void close() {
        SqlSession session = threadLocal.get();
        if (session != null) {
            session.close();
            threadLocal.set(null);
//            threadLocal.remove();
        }
    }

}
