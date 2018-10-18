package cn.rumoss.web.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import cn.rumoss.web.pojo.Content;

import java.util.List;

/**
 * 内容表(post-文章,draft-草稿,page-页面,link-链接,attachment-文件)数据访问接口
 * @author Administrator
 *
 */
public interface ContentDao extends JpaRepository<Content,String>,JpaSpecificationExecutor<Content>{

    /**
     *  通过cid查询内容
     * @param cid
     * @return
     */
    public Content findByCid(Long cid);

}
