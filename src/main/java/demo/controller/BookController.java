package demo.controller;

import demo.dao.BookDao;
import demo.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created at 221
 * 16-7-10 上午10:48.
 */
@Controller
@RequestMapping("book")
public class BookController extends BaseController {

    @Autowired
    private BookDao bookDao;


    @RequestMapping("create")
    private String create(Book book) {
        bookDao.create(book);
        return "redirect:/book/queryAll";
    }

    @RequestMapping("queryAll")
    private String queryAll() {
        session.setAttribute("books", bookDao.queryAll());
        return "redirect:/home.jsp";
    }

    @RequestMapping("queryOne/{id}")
    private String queryOne(@PathVariable int id) {
        session.setAttribute("book", bookDao.queryOne(id));
        return "redirect:/edit.jsp";
    }

    @RequestMapping("update")
    private String update(Book book) {
        bookDao.update(book);
        return "redirect:/book/queryAll";
    }

    @RequestMapping("remove/{id}")
    private String delete(@PathVariable int id) {
        bookDao.remove(id);
        return "redirect:/book/queryAll";
    }
}
