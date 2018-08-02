package com.liuyang19900520.robot.life.blog.java.service;

import com.liuyang19900520.robot.life.blog.java.common.pojo.PageBean;
import com.liuyang19900520.robot.life.blog.java.domain.Blog;

import java.util.List;

/**
 * @program: robotlife-blog-java
 * @description:
 * @author: LiuYang
 * @create: 2018-07-13 14:40
 **/
public interface BlogService {

    PageBean<Blog> listBlgosByPage(Blog blog, Integer pageNo, Integer rows);

    Blog findBlog(String key);

    Boolean addBlog(Blog blog);

    Boolean addTempBlog(Blog blog);

    List<Blog> listTempBlogs();

    Blog findTempBlog(String key);


}
