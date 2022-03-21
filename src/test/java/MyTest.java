import com.aqya.dao.BookMapper;
import com.aqya.pojo.Books;
import com.aqya.service.BookService;
import com.aqya.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * @author aqya
 * @creat 2022-03-18 22:20
 */
public class MyTest {

    @Test
    public void test(){
        ApplicationContext context = new ClassPathXmlApplicationContext ("applicationContext.xml");
        BookService bean = (BookService)context.getBean ("BookServiceImpl");
        Books books = bean.selectBookById (1);
        System.out.println (books);
    }

    @Test
    public void test2(){
       ApplicationContext context = new ClassPathXmlApplicationContext ("applicationContext.xml");
        BookService bean = (BookService) context.getBean ("BookServiceImpl");
        List<Books> books = bean.selectBooks ();
        for (Books book : books) {
            System.out.println (book);
        }


    }
    @Test
    public void test3(){
        ApplicationContext context = new ClassPathXmlApplicationContext ("applicationContext.xml");
        BookService bean = (BookService) context.getBean ("BookServiceImpl");
       bean.addBook (new Books (14,"java入门",12,"help"));

    }

    @Test
    public void test4(){
        SqlSession sqlSession = MybatisUtils.getSqlSession ();
        BookMapper mapper = sqlSession.getMapper (BookMapper.class);
        mapper.addBook (new Books (14,"java入门",12,"help"));

        sqlSession.close ();

    }

    @Test
    public void test5(){
        ApplicationContext context = new ClassPathXmlApplicationContext ("applicationContext.xml");
        BookService bean = (BookService) context.getBean ("BookServiceImpl");
        bean.queryBookByName ("java");

    }
    }

