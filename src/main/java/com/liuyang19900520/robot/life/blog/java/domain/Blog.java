package com.liuyang19900520.robot.life.blog.java.domain;

import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import lombok.Data;

import java.io.Serializable;

/**
 * @program: robotlife-blog-java
 * @description:
 * @author: LiuYang
 * @create: 2018-07-13 13:51
 **/
@Data
public class Blog extends BaseEntity implements Serializable {


    Long id;

    Long blogId;
    String blogTitle;
    String blogContent;
    String blogHtml;
    String tags;
    Long categoryId;
    Long authorId;
    Long topicId;

}
