package cn.rumoss.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *  FreeMarker测试控制器
 */
@Controller
public class FmController {

    @RequestMapping("/freemarker")
    public String freemarker(Map<String,Object> map) {
        map.put("name", "Joe");
        map.put("sex", 1);    //sex:性别，1：男；0：女；
        // 模拟数据
        List<Map<String, Object>> friends = new ArrayList<Map<String, Object>>();
        Map<String, Object> friend = new HashMap<String, Object>();
        friend.put("name", "xbq");
        friend.put("age", 22);
        friends.add(friend);
        friend = new HashMap<String, Object>();
        friend.put("name", "July");
        friend.put("age", 18);
        friends.add(friend);
        map.put("friends", friends);
        return "freemarker";
    }

    @RequestMapping("/index")
    public String index(Map<String,Object> map) {
        // 模拟数据
        List<Map<String, Object>> articles = new ArrayList<Map<String, Object>>();
        Map<String, Object> article = new HashMap<String, Object>();
        article.put("datePublished", "October 17th , 2018");
        article.put("title", "MongoDB基础入门(二)");
        article.put("articleBody", "&nbsp; &nbsp; 本文为 MongoDB 基本命令，用来记录学习。 一.插入与查询 1.选择(创建)数据库 &nbsp;&nbsp;&nbsp;&nbsp;数据库不存在就会创建。 --...");
        article.put("category", "NoSQL");
        articles.add(article);
        article = new HashMap<String, Object>();
        article.put("datePublished", "October 7th , 2018");
        article.put("title", "MongoDB基础入门(一)");
        article.put("articleBody", "&nbsp; &nbsp; 本文为 MongoDB 基本命令，用来记录学习。 一.插入与查询 1.选择(创建)数据库 &nbsp;&nbsp;&nbsp;&nbsp;数据库不存在就会创建。 --...");
        article.put("category", "SQL");
        articles.add(article);
        map.put("articles", articles);
        return "index";
    }

    @RequestMapping("/archives")
    public String archives(Map<String,Object> map) {
        // 模拟数据
        List<Map<String, Object>> months = new ArrayList<Map<String, Object>>();
        Map<String, Object> month = new HashMap<String, Object>();
        List<Map<String, Object>> articles = new ArrayList<Map<String, Object>>();
        Map<String, Object> article = new HashMap<String, Object>();

        month.put("desc","2018年 10月");
        month.put("count",3);
        article.put("title", "使用RedisTemplate存储键值乱码解决方案");
        article.put("count", 3);
        article.put("day", 23);
        article.put("href", "http://www.baidu.com");
        articles.add(article);
        article = new HashMap<String, Object>();
        article.put("title", "弄了一本电子书...");
        article.put("count", 6);
        article.put("day", 13);
        article.put("href", "http://www.baidu.com");
        articles.add(article);
        article = new HashMap<String, Object>();
        article.put("title", "MongoDB基础入门");
        article.put("count", 9);
        article.put("day", 5);
        article.put("href", "http://www.baidu.com");
        articles.add(article);
        month.put("articles",articles);
        months.add(month);

        month = new HashMap<String, Object>();
        articles = new ArrayList<Map<String, Object>>();
        article = new HashMap<String, Object>();

        month.put("desc","2018年 09月");
        month.put("count",5);
        article.put("title", "Markdown常用语法");
        article.put("count", 2);
        article.put("day", 15);
        article.put("href", "http://www.baidu.com");
        articles.add(article);
        article = new HashMap<String, Object>();
        article.put("title", "零拷贝I：用户模式视角");
        article.put("count", 4);
        article.put("day", 10);
        article.put("href", "http://www.baidu.com");
        articles.add(article);
        article = new HashMap<String, Object>();
        article.put("title", "ZooKeeper类初探");
        article.put("count", 8);
        article.put("day", 2);
        article.put("href", "http://www.baidu.com");
        articles.add(article);
        month.put("articles",articles);
        months.add(month);

        map.put("months", months);
        return "archives";
    }

}
