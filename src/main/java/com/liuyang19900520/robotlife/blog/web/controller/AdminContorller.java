package com.liuyang19900520.robotlife.blog.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @program: robotlife-blog-service
 * @description:
 * @author: LiuYang
 * @create: 2018-09-05 14:45
 **/
@Controller
@RequestMapping("/admin")
public class AdminContorller {

    @GetMapping("/index")
    @ResponseBody
    public Object index() {
        return "true";
    }
}
