package com.liuyang19900520.robot.life.blog.java.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.liuyang19900520.robot.life.blog.java.common.pojo.PageBean;
import com.liuyang19900520.robot.life.blog.java.common.util.LIdGenerator;
import com.liuyang19900520.robot.life.blog.java.dao.BlogDao;
import com.liuyang19900520.robot.life.blog.java.domain.Blog;
import com.liuyang19900520.robot.life.blog.java.service.BlogService;
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
public class BlogServiceImpl implements BlogService {

    @Autowired
    BlogDao blogDao;

    @Override
    public PageBean<Blog> listBlgosByPage(Blog blog, Integer pageNo, Integer rows) {

        PageHelper.startPage(pageNo, rows);
        List<Blog> list = blogDao.selectBlogsByPage(blog);

        PageInfo<Blog> pageInfo = new PageInfo<>(list);
        PageBean<Blog> result = new PageBean<>();
        result.setData(pageInfo.getList());
        result.setPagesTotal(pageInfo.getPages());

        return result;
    }

    /**
     * Add blog
     *
     * @param blog
     * @return isInserted
     */
    @Override
    public Boolean addBlog(Blog blog) {
        blog.setBlogId(new LIdGenerator().nextId());
        blog.setAuthorId(Long.parseLong("19900520"));
        Integer inInserted = blogDao.insertBlog(blog);
        return inInserted > 0;
    }

    @Override
    public Boolean addTempBlog(Blog blog) {
        blog.setBlogId(new LIdGenerator().nextId());
        blog.setAuthorId(Long.parseLong("19900520"));
        Integer inInserted = blogDao.insertTempBlog(blog);
        return inInserted > 0;
    }

    @Override
    public List<Blog> listTempBlogs() {
        return blogDao.selectTempBlogs();
    }

    @Override
    public Blog findTempBlog(String key) {
        return blogDao.selectTempBlogByKey(key);
    }

    @Override
    public Blog findBlog(String key) {
        return blogDao.selectBlogByKey(key);
    }


}
