package demo.dao;

import java.util.List;

/**
 * Created by xlj
 * 2016/7/12.
 */
public interface GenericDao<T> {
    void create(T t);

    List<T> query(T t);

    List<T> queryAll();

    T queryOne(int id);

    void update(T t);

    void remove(int id);

}
