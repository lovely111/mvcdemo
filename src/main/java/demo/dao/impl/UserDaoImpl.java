package demo.dao.impl;


import demo.dao.UserDao;

import demo.model.User;
import org.springframework.stereotype.Repository;

/**
 * Created by xlj
 * 2016/7/12.
 */
@Repository
public class UserDaoImpl extends GenericDaoImpl<User> implements UserDao {
}
