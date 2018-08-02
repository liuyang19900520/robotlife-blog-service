package com.liuyang19900520.robot.life.blog.java.service;

import com.liuyang19900520.robot.life.blog.java.common.pojo.PageBean;
import com.liuyang19900520.robot.life.blog.java.domain.Blog;
import com.liuyang19900520.robot.life.blog.java.domain.Category;

import java.util.List;

/**
 * @program: robotlife-blog-java
 * @description:
 * @author: LiuYang
 * @create: 2018-07-13 14:40
 **/
public interface CategoryService {

    List<Category> listCategories(Category category);

    List<Blog> listBolgTitles(Long categoryId);


}
