package com.liuyang19900520.robotlife.blog.web.controller;

import com.liuyang19900520.robotlife.blog.common.util.json.JSON;
import com.liuyang19900520.robotlife.blog.domain.Blog;
import com.liuyang19900520.robotlife.blog.service.BlogService;
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
@RequestMapping("/blogs")
public class BlogController {

    @Autowired
    BlogService blogService;


    @PostMapping("/page")
    @JSON(type = Blog.class, include = "blogId,blogTitle,blogSummary,authorId,tags,updateAt")
    public Object listBlogs(Blog blog, Integer pageNo, Integer rows) {
        return blogService.listBlgosByPage(blog, pageNo, rows);
    }

    @GetMapping("/{blogId}")
    @JSON(type = Blog.class, include = "blogId,blogTitle,blogSummary,blogContent,blogHtml,authorId,tags,createAt,categoryId,topicId")
    public Object findBlogs(@PathVariable("blogId") Long blogId) {
        return blogService.findBlog(blogId);
    }

    @PostMapping("")
    @ResponseBody
    public Object writeBlogs(@RequestBody Blog blog) {
        return blogService.addBlog(blog) ? "success" : "failed";
    }


    @PostMapping("/temp")
    @ResponseBody
    public Object writeTempBlogs(@RequestBody Blog blog) {
        return blogService.addTempBlog(blog) ? "success" : "failed";
    }


    @GetMapping("/temp")
    @ResponseBody
    public Object listTempBlogs() {
        return blogService.listTempBlogs();
    }


    @GetMapping("/temp/{blogId}")
    @ResponseBody
    public Object findTempBlog(@PathVariable("blogId") Long blogId) {
        return blogService.findTempBlog(blogId);
    }


}
