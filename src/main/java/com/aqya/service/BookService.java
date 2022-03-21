package com.aqya.service;

import com.aqya.pojo.Books;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.awt.print.Book;
import java.util.List;
import java.util.Map;

/**
 * @author aqya
 * @creat 2022-03-18 20:29
 */


public interface BookService {
    /**
     *   增加一本书
     */
    int addBook(Books books);
    /**
     *  删除一本书
     */
    int deleteBookById(int id);

    /**
     * 更新一本书
     */
    int updateBook(Books books);

    /**
     *  查询一本书
     */
    Books selectBookById(int id);

    /**
     * 查询全部书
     */
    List<Books> selectBooks ();

    /**
     * 按条件查询
     */
   List<Books> queryBookByName(String bookName);


}
