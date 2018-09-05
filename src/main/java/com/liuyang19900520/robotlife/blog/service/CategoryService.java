package com.liuyang19900520.robotlife.blog.service;

import com.liuyang19900520.robotlife.blog.common.pojo.PageBean;
import com.liuyang19900520.robotlife.blog.domain.Blog;
import com.liuyang19900520.robotlife.blog.domain.Category;
import com.liuyang19900520.robotlife.blog.domain.Blog;
import com.liuyang19900520.robotlife.blog.domain.Category;

import java.util.List;

/**
 * @program: robotlife-blog-java
 * @description:
 * @author: LiuYang
 * @create: 2018-07-13 14:40
 **/
public interface CategoryService {

    List<Category> listCategories(Category category);

    List<Blog> listBlogTitles(Long categoryId);

    Boolean addCategory(Category category);



}
