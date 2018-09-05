package com.liuyang19900520.robotlife.blog.web.controller;

import com.liuyang19900520.robotlife.blog.common.util.json.JSON;
import com.liuyang19900520.robotlife.blog.domain.Blog;
import com.liuyang19900520.robotlife.blog.domain.Category;
import com.liuyang19900520.robotlife.blog.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * @program: robotlife-blog-java
 * @description:
 * @author: LiuYang
 * @create: 2018-07-13 16:08
 **/
@Controller
@RequestMapping("/categories")
public class CategoryController {

    @Autowired
    CategoryService categoryService;


    @GetMapping("")
    @JSON(type = Category.class, include = "categoryId,categoryContent,parentId,categoryRank")
    public Object listCategories(Category category) {
        return categoryService.listCategories(category);
    }

    @GetMapping("/{categoryId}")
    @JSON(type = Blog.class, include = "blogId,blogTitle")
    public Object listBlogTitles(@PathVariable Long categoryId) {
        return categoryService.listBlogTitles(categoryId);
    }

    @PostMapping("")
    @ResponseBody
    public Object addCategory(@RequestBody Category category) {
        return categoryService.addCategory(category);
    }

}
