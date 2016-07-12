package demo.dao.impl;

import demo.dao.GenericDao;

import java.lang.reflect.ParameterizedType;
import java.util.List;

/**
 * Created by xlj
 * 2016/7/12.
 */
public class GenericDaoImpl<T> implements GenericDao<T>{
    private String namespace;

    @SuppressWarnings("unchecked")
    public GenericDaoImpl() {
        Class<T> clazz = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        System.out.println("------------->" + clazz.getSimpleName());
        namespace = clazz.getSimpleName().toLowerCase().concat(".");
    }


    //
    @Override
    public void create(T t) {

    }

    @Override
    public List<T> query(T t) {
        return null;
    }

    @Override
    public List<T> queryAll() {
        return null;
    }

    @Override
    public T queryOne(int id) {
        return null;
    }

    @Override
    public void update(T t) {

    }

    @Override
    public void remove(int id) {

    }
}
