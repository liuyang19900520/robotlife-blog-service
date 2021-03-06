package com.liuyang19900520.robot.life.blog.java.domain;

import lombok.Data;

import java.io.Serializable;

/**
 * @program: robotlife-blog-java
 * @description:
 * @author: LiuYang
 * @create: 2018-07-13 13:51
 **/
@Data
public class Topic extends BaseEntity implements Serializable {

    Long id;
    Long topicId;
    String topicContent;
    Integer topicRank;
}
