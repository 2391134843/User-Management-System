package listener;

import org.apache.ibatis.session.SqlSession;
import utils.SqlSessionFactoryUtils;

import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

//加上注解就可以不需要xml配置文件了
@WebListener
public class InitSqlSessionListener implements ServletContextListener{
    /**
     * 利用监听器机制来加载初始化sqlsession工厂对象
     * @param sce
     */
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("容器加载中...");
        //初始化我们的sqlsessionFactory对象
        SqlSessionFactoryUtils.initSqlSessionFactry();
    }

    /**
     * 同样的利用监听器机制来将sqlsession工厂对象销毁
     * @param sce
     */
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁中...");
        //关闭SqlSession对象
        SqlSessionFactoryUtils.close();
    }
}
