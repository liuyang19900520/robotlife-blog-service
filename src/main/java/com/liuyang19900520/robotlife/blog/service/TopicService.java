package com.liuyang19900520.robotlife.blog.service;

import com.liuyang19900520.robotlife.blog.domain.Blog;
import com.liuyang19900520.robotlife.blog.domain.Category;
import com.liuyang19900520.robotlife.blog.domain.Topic;
import com.liuyang19900520.robotlife.blog.domain.Topic;

import java.util.List;

/**
 * @program: robotlife-blog-java
 * @description:
 * @author: LiuYang
 * @create: 2018-07-13 14:40
 **/
public interface TopicService {

    List<Topic> listTopics(Topic topic);


}
