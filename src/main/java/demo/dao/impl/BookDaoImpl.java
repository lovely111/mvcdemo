package demo.dao.impl;

import demo.dao.BookDao;

import demo.model.Book;
import org.springframework.stereotype.Repository;

/**
 * Created by xlj
 * 2016/7/12.
 */

@Repository
public class BookDaoImpl extends GenericDaoImpl<Book> implements BookDao {
}
