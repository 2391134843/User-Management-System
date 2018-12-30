package dao;

import entity.Admin;
import entity.Users;
import org.apache.ibatis.session.SqlSession;
import utils.SqlSessionFactoryUtils;

import java.util.List;

public class AdminDao {

    private SqlSession sqlSession;
    private Admin admin;

    /**
     * 获得mybatis工厂sqlsession的链接
     * @return
     */
    private SqlSession getSqlSession() {
        sqlSession= SqlSessionFactoryUtils.getSqlSessionFactory().openSession();
        return sqlSession;
    }

    /**
     * 根据用户名单个返回用户信息
     * @param email,password
     * @return 返回某个用户的信息
     */
    public Admin login(String email,String password) {
        try {
            //动态构造，用同一个id即可调用不同的sql语句
//            admin = getSqlSession().selectOne("login", new Admin(email,password));
//            admin = getSqlSession().selectList("login", new Admin(email,password));
            System.out.println(email+"wwwww");
            this.admin = getSqlSession().selectOne("login", new Admin(email,password));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return this.admin;
    }
}
