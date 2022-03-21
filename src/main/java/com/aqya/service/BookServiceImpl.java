package com.aqya.service;

/**
 * @author aqya
 * @creat 2022-03-18 20:31
 */

import com.aqya.dao.BookMapper;
import com.aqya.pojo.Books;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * service 调dao层
 * @author 阿青呀
 */
@Service
public class BookServiceImpl  implements BookService{



    public BookMapper bookMapper;
    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }


    public int addBook(Books books) {
        return bookMapper.addBook (books);
    }

    public int deleteBookById(int id) {
        return bookMapper.deleteBookById (id);
    }

    public int updateBook(Books books) {
        System.out.println ("====>"+books);
        return bookMapper.updateBook (books);
    }

    public Books selectBookById(int id) {
        return bookMapper.selectBookById (id);
    }

    public List<Books> selectBooks() {
        return bookMapper.selectBooks ();
    }

    public List<Books>  queryBookByName(String bookName) {
        return bookMapper.queryBookByName (bookName);
    }
}
