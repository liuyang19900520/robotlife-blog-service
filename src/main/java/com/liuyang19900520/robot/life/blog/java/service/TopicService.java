package com.liuyang19900520.robot.life.blog.java.service;

import com.liuyang19900520.robot.life.blog.java.domain.Blog;
import com.liuyang19900520.robot.life.blog.java.domain.Category;
import com.liuyang19900520.robot.life.blog.java.domain.Topic;

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
