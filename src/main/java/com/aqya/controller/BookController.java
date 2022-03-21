package com.aqya.controller;

import com.aqya.pojo.Books;
import com.aqya.service.BookService;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * @author aqya
 * @creat 2022-03-18 21:29
 */
@Controller
@RequestMapping("/book")
public class BookController {
     //controller 调 service


    private final BookService bookService;


    public BookController(@Qualifier("BookServiceImpl") BookService bookService) {
        this.bookService = bookService;
    }


    //查询全部书籍
    @RequestMapping("/queryBook")
    public String getBook(Model model) {
        List<Books> book = bookService.selectBooks ();
        model.addAttribute ("books", book);

        return "queryBook";
    }

    //跳转增加页面
    @RequestMapping("/toAddBook")
    public String toAddBook(){
        return "addBook";
    }

    //添加书籍
    @RequestMapping("/addBook")
    public String addBook(Books books){
        System.out.println ("addbook==" + books);
        bookService.addBook (books);
        return "redirect:/book/queryBook";   //重定向
    }

    //跳转修改页面
    @RequestMapping("/toUpdate/{bookId}")
    public String toUpdatePager(@PathVariable("bookId") int id,Model model){
        Books books = bookService.selectBookById (id);
        model.addAttribute ("qBooks",books);
        return "updateBook";
    }

    //跳转首页页面
    @RequestMapping("/toFrontPage")
    public String toFrontPage(){
        return "index";
    }

    //修改书籍

    @RequestMapping("/updateBook")
    public String updateBook(Books books){
        System.out.println ("updateBook==>>"+books);
         bookService.updateBook(books);
        return "redirect:/book/queryBook";   //重定向
    }

    //删除书籍
    @RequestMapping("/deleteBook/{bookId}")
    public String deleteBook(@PathVariable("bookId") int id){
        bookService.deleteBookById (id);
        return  "redirect:/book/queryBook";
    }


    //查询书籍
    @RequestMapping("/qbn")
    public String queryBook(String queryBookName,Model model) {
        List<Books> list  =bookService.queryBookByName (queryBookName);
        if(list == null ||list.size() ==0){
            list = bookService.selectBooks ();
            model.addAttribute ("error","未查到");

        }
        System.out.println (list);
        model.addAttribute ("books", list);
        return "queryBook";
    }

}
