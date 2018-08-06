package com.liuyang19900520.robot.life.blog.java.dao;

import com.liuyang19900520.robot.life.blog.java.domain.Blog;
import com.liuyang19900520.robot.life.blog.java.domain.Category;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import javax.websocket.server.PathParam;
import java.util.List;

/**
 * @program: robotlife-blog-java
 * @description:
 * @author: LiuYang
 * @create: 2018-07-13 15:10
 **/
@Repository
@Mapper
public interface CategoryDao {

    List<Category> selectGategories(Category category);

    List<Blog> selectBolgTitlesByCategoryId(@Param("categoryId") Long cid);

    Integer insertCategory(Category category);

    Integer selectMaxRank();

}
