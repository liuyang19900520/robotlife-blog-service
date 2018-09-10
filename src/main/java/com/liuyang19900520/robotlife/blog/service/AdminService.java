package com.liuyang19900520.robotlife.blog.service;

import com.liuyang19900520.robotlife.blog.domain.Blog;

import java.util.List;

public interface AdminService {

    Boolean addBlog(Blog blog);

    Boolean addTempBlog(Blog blog);

    List<Blog> listTempBlogs();

    Blog findTempBlog(Long key);



}
