package cn.rumoss.web.controller;

import cn.rumoss.common.entity.Result;
import cn.rumoss.common.entity.StatusCode;
import cn.rumoss.common.util.DateUtil;
import cn.rumoss.web.pojo.Content;
import cn.rumoss.web.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *  FreeMarker测试控制器
 */
@Controller
public class FmController {

   @RequestMapping("/timeline")
    public String timeline(Map<String,Object> map) {
        map.put("name", "Joe");
        map.put("sex", 1);    //sex:性别，1：男；0：女；
        // 模拟数据
        List<Map<String, Object>> timelines = new ArrayList<Map<String, Object>>();
        Map<String, Object> timeline = new HashMap<String, Object>();
        timeline.put("date", "2018年 10月1日");
        timeline.put("intro", "开始萌生想法~");
        timeline.put("more", "反应式编程模型是目前编程世界的大势所趋。Java服务框架中的扛把子Spring会在5.0中全面拥抱反应式编程模型，这意味着广大的Java程序员都开始有可能接触反应式编程的思想，除非他们的项目永远被三体人锁死在了Spring 4。");
        timelines.add(timeline);
        timeline = new HashMap<String, Object>();
        timeline.put("date", "2018年 10月5日");
        timeline.put("intro", "开始萌生想法~");
        timeline.put("more", "反应式编程模型是目前编程世界的大势所趋。Java服务框架中的扛把子Spring会在5.0中全面拥抱反应式编程模型，这意味着广大的Java程序员都开始有可能接触反应式编程的思想，除非他们的项目永远被三体人锁死在了Spring 4。");
        timelines.add(timeline);
        timeline = new HashMap<String, Object>();
        timeline.put("date", "2018年 10月10日");
        timeline.put("intro", "开始萌生想法~");
        timeline.put("more", "反应式编程模型是目前编程世界的大势所趋。Java服务框架中的扛把子Spring会在5.0中全面拥抱反应式编程模型，这意味着广大的Java程序员都开始有可能接触反应式编程的思想，除非他们的项目永远被三体人锁死在了Spring 4。");
        timelines.add(timeline);
        timeline = new HashMap<String, Object>();
        timeline.put("date", "2018年 10月15日");
        timeline.put("intro", "开始萌生想法~");
        timeline.put("more", "反应式编程模型是目前编程世界的大势所趋。Java服务框架中的扛把子Spring会在5.0中全面拥抱反应式编程模型，这意味着广大的Java程序员都开始有可能接触反应式编程的思想，除非他们的项目永远被三体人锁死在了Spring 4。");
        timelines.add(timeline);
        timeline = new HashMap<String, Object>();
        timeline.put("date", "2018年 10月16日");
        timeline.put("intro", "开始萌生想法~");
        timeline.put("more", "反应式编程模型是目前编程世界的大势所趋。Java服务框架中的扛把子Spring会在5.0中全面拥抱反应式编程模型，这意味着广大的Java程序员都开始有可能接触反应式编程的思想，除非他们的项目永远被三体人锁死在了Spring 4。");
        timelines.add(timeline);
        map.put("timelines", timelines);
        return "timeline";
    }

    @RequestMapping("/about")
    public String about(Map<String,Object> map) {
        return "about";
    }

    @Autowired
    private ContentService contentService;

    @RequestMapping(value="/{id}",method= RequestMethod.GET)
    public Result findById(@PathVariable String id){
        return new Result(true, StatusCode.OK,"查询成功",contentService.findById(id));
    }

    @RequestMapping("/article/{cid}")
    public String article(@PathVariable Long cid, Map<String,Object> map) {
        Content content= contentService.findByCId(cid);
        Map<String, Object> article = new HashMap<String, Object>();
        article.put("datePublished", DateUtil.longToString(content.getCreated(),DateUtil.DATE_FORMAT_001));
        article.put("title", content.getTitle());
        article.put("articleBody", content.getText());
        article.put("category", "NoSQL");
        article.put("dateModified", DateUtil.longToString(content.getModified(),DateUtil.DATE_FORMAT_001));
        map.put("article", article);
        return "article";
    }

    @RequestMapping("/")
    public String index(Map<String,Object> map) {
        map.put("type","post");// 查询发布的文章
        Page<Content> pageList = contentService.findSearchOrdered(map, 1, 6);
        List<Content> contents = pageList.getContent();
        List<Map<String, Object>> articles = new ArrayList<Map<String, Object>>();
        for(int i=0;i<contents.size();i++){
            Map<String, Object> article = new HashMap<String, Object>();
            Content content = contents.get(i);
            article.put("cid", content.getCid());
            article.put("datePublished", DateUtil.longToStringEN(content.getCreated()*1000,DateUtil.DATE_FORMAT_002));
            article.put("title", content.getTitle());
            article.put("articleBody", content.getSlug());
            article.put("category", "NoSQL");
            articles.add(article);
        }
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
