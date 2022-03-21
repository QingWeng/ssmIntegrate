package com.aqya.dao;

import com.aqya.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.awt.print.Book;
import java.util.List;
import java.util.Map;

/**
 * @author aqya
 * @creat 2022-03-18 20:01
 */
public interface BookMapper {
    /**
     *   增加一本书
     */
    int addBook(Books books);
    /**
     *  删除一本书
      */
    int deleteBookById(@Param("bookID")int id);

    /**
     * 更新一本书
     */
    int updateBook(Books books);

    /**
     *  查询一本书
     */
    Books selectBookById(@Param("bookID")int id);

    /**
     * 查询全部书
     */
    List<Books>  selectBooks();


    /**
     * 按条件查询
     */
    List<Books> queryBookByName(@Param ("bookName") String bookName);






}
