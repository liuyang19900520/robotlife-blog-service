package com.liuyang19900520.robotlife.blog.web.controller;

import com.liuyang19900520.robotlife.blog.common.pojo.Messages;
import com.liuyang19900520.robotlife.blog.common.pojo.ResultVo;
import com.liuyang19900520.robotlife.blog.domain.Blog;
import com.liuyang19900520.robotlife.blog.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * @program: robotlife-blog-service
 * @description:
 * @author: LiuYang
 * @create: 2018-09-05 14:45
 **/
@Controller
@RequestMapping("/admin")
public class AdminContorller {

    @Autowired
    AdminService blogService;

    @GetMapping("/index")
    @ResponseBody
    public Object index() {
        return ResultVo.success(Messages.JWT_TOKEN_AUTH_SUCCESS, null);
    }

    @PostMapping("/blogs")
    @ResponseBody
    public Object writeBlogs(@RequestBody Blog blog) {
        return blogService.addBlog(blog) ? "success" : "failed";
    }


    @PostMapping("/blogs/temp")
    @ResponseBody
    public Object writeTempBlogs(@RequestBody Blog blog) {
        return blogService.addTempBlog(blog) ? "success" : "failed";
    }


    @GetMapping("/blogs/temp")
    @ResponseBody
    public Object listTempBlogs() {
        return blogService.listTempBlogs();
    }


    @GetMapping("/blogs/temp/{blogId}")
    @ResponseBody
    public Object findTempBlog(@PathVariable("blogId") Long blogId) {
        return blogService.findTempBlog(blogId);
    }
}
