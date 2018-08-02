package com.liuyang19900520.robot.life.blog.java.service.impl;

import com.liuyang19900520.robot.life.blog.java.dao.CategoryDao;
import com.liuyang19900520.robot.life.blog.java.domain.Blog;
import com.liuyang19900520.robot.life.blog.java.domain.Category;
import com.liuyang19900520.robot.life.blog.java.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: robotlife-blog-java
 * @description:
 * @author: LiuYang
 * @create: 2018-07-13 14:54
 **/
@Service
public class CategoryServiceImpl implements CategoryService {


    @Autowired
    CategoryDao categoryDao;

    @Override
    public List<Category> listCategories(Category category) {
        return categoryDao.selectGategories(category);
    }

    @Override
    public List<Blog> listBolgTitles(Long categoryId) {
        return categoryDao.selectBolgTitlesByCategoryId(categoryId);
    }
}
