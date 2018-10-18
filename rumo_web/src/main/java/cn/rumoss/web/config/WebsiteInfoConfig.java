package cn.rumoss.web.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.http.HttpServletRequest;

/**
 *  网站信息配置
 */
@ControllerAdvice // 全局注入
public class WebsiteInfoConfig {

    @Autowired
    private HttpServletRequest request;

    @ModelAttribute(name = "logo_title")
    public Object title(){
        return "濡沫杂记";
    }

    @ModelAttribute(name = "logo_url")
    public Object url(){
        return request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
    }

    @ModelAttribute(name = "motto_desc")
    public Object motto(){
        return "时间会让我们更好。&nbsp;&nbsp;&nbsp;";
    }

    @ModelAttribute(name = "weibo_url")
    public Object weibo(){
        return "http://www.baidu.com";
    }

    @ModelAttribute(name = "github_url")
    public Object github(){
        return "http://www.baidu.com";
    }

    @ModelAttribute(name = "rss_url")
    public Object rss(){
        return "http://www.baidu.com";
    }

    @ModelAttribute(name = "run_year")
    public Object runyear(){
        return 1;
    }

    @ModelAttribute(name = "run_day")
    public Object runday(){
        return 29;
    }

    @ModelAttribute(name = "icp_no")
    public Object icp(){
        return "湘ICP备15018666号-2";
    }

}
