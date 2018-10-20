package cn.rumoss.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import cn.rumoss.web.pojo.Comment;

import java.util.List;

/**
 * 评论表数据访问接口
 * @author Administrator
 *
 */
public interface CommentDao extends JpaRepository<Comment,String>,JpaSpecificationExecutor<Comment>{

    /**
     *  通过Cid查询所有评论
     * @return
     */
    public List<Comment> findAllByCid(Long cid);

}
