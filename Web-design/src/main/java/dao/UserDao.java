package dao;

import entity.Users;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import utils.SqlSessionFactoryUtils;

import java.util.List;

public class UserDao {
    private SqlSession sqlSession;
    private List<Users> list;
    private Users user;

    /**
     * 获得mybatis工厂sqlsession的链接
     * @return
     */
    private SqlSession getSqlSession() {
        sqlSession=SqlSessionFactoryUtils.getSqlSessionFactory().openSession();
        return sqlSession;
    }

    /**
     * 查询并返回全部的用户
     * @return  返回用户表中所有的用户
     */
    public List<Users> findAll() {
        try {
            list = getSqlSession().selectList("findUsers");
        } catch (Exception ex) {
            ex.printStackTrace();
        }finally {
            sqlSession.close();
        }
        return list;
    }

    /**
     * 根据用户名单个返回用户信息
     * @param id
     * @return 返回某个用户的信息
     */
    public Users findById(int id) {
        try {
            //动态构造，用同一个id即可调用不同的sql语句
            user = getSqlSession().selectOne("findUsers", new Users(id));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return user;
    }

    /**
     * 新增用户
     * @param user
     * @return 将新增成功的用户信息返回
     */
    public Users addUser(Users user) {
        try {
            getSqlSession().insert("addUser", user);
            sqlSession.commit();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return user;
    }

    /**
     * 更新用户信息
     * @param user
     * @return 返回更新后的用户信息
     */
    public Users updateUser(Users user) {
        try {
            getSqlSession().update("updateUser", user);
            sqlSession.commit();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return user;
    }

    /**
     * 删除用户
     * @param id
     */
    public void deleteUser(int id) {
        try {
            getSqlSession().delete("deleteUser",id);
            sqlSession.commit();
        } catch (Exception ex) {
            ex.printStackTrace();
        }finally {
            sqlSession.close();
        }
    }

}
