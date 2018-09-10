package com.liuyang19900520.robotlife.blog.service;

import com.liuyang19900520.robotlife.blog.common.pojo.PageBean;
import com.liuyang19900520.robotlife.blog.domain.Blog;
import com.liuyang19900520.robotlife.blog.common.pojo.PageBean;
import com.liuyang19900520.robotlife.blog.domain.Blog;

import java.util.List;

/**
 * @program: robotlife-blog-java
 * @description:
 * @author: LiuYang
 * @create: 2018-07-13 14:40
 **/
public interface BlogService {

    PageBean<Blog> listBlgosByPage(Blog blog, Integer pageNo, Integer rows);

    Blog findBlog(Long key);




}
