package cn.rumoss.web.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.persistence.criteria.Selection;

import cn.rumoss.common.util.IdWorker;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;


import cn.rumoss.web.dao.CommentDao;
import cn.rumoss.web.pojo.Comment;

/**
 * 评论表服务层
 * 
 * @author Administrator
 *
 */
@Service
public class CommentService {

	@Autowired
	private CommentDao commentDao;
	
	@Autowired
	private IdWorker idWorker;

	/**
	 * 查询全部列表
	 * @return
	 */
	public List<Comment> findAll() {
		return commentDao.findAll();
	}

	/**
	 *  查询全部列表(通过Cid)
	 * @return
	 */
	public List<Comment> findAllByCid(Long cid) {
		return commentDao.findAllByCid(cid);
	}

	
	/**
	 * 条件查询+分页
	 * @param whereMap
	 * @param page
	 * @param size
	 * @return
	 */
	public Page<Comment> findSearch(Map whereMap, int page, int size) {
		Specification<Comment> specification = createSpecification(whereMap);
		PageRequest pageRequest =  PageRequest.of(page-1, size);
		return commentDao.findAll(specification, pageRequest);
	}

	
	/**
	 * 条件查询
	 * @param whereMap
	 * @return
	 */
	public List<Comment> findSearch(Map whereMap) {
		Specification<Comment> specification = createSpecification(whereMap);
		return commentDao.findAll(specification);
	}

	/**
	 * 根据ID查询实体
	 * @param id
	 * @return
	 */
	public Comment findById(String id) {
		return commentDao.findById(id).get();
	}

	/**
	 * 增加
	 * @param comment
	 */
	public void add(Comment comment) {
		comment.setCoid( idWorker.nextId() );
		commentDao.save(comment);
	}

	/**
	 * 修改
	 * @param comment
	 */
	public void update(Comment comment) {
		commentDao.save(comment);
	}

	/**
	 * 删除
	 * @param id
	 */
	public void deleteById(String id) {
		commentDao.deleteById(id);
	}

	/**
	 * 动态条件构建
	 * @param searchMap
	 * @return
	 */
	private Specification<Comment> createSpecification(Map searchMap) {

		return new Specification<Comment>() {

			@Override
			public Predicate toPredicate(Root<Comment> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> predicateList = new ArrayList<Predicate>();
                // 评论作者
                if (searchMap.get("author")!=null && !"".equals(searchMap.get("author"))) {
                	predicateList.add(cb.like(root.get("author").as(String.class), "%"+(String)searchMap.get("author")+"%"));
                }
                // 评论者邮件
                if (searchMap.get("mail")!=null && !"".equals(searchMap.get("mail"))) {
                	predicateList.add(cb.like(root.get("mail").as(String.class), "%"+(String)searchMap.get("mail")+"%"));
                }
                // 评论者网址
                if (searchMap.get("url")!=null && !"".equals(searchMap.get("url"))) {
                	predicateList.add(cb.like(root.get("url").as(String.class), "%"+(String)searchMap.get("url")+"%"));
                }
                // 评论者ip地址
                if (searchMap.get("ip")!=null && !"".equals(searchMap.get("ip"))) {
                	predicateList.add(cb.like(root.get("ip").as(String.class), "%"+(String)searchMap.get("ip")+"%"));
                }
                // 评论者客户端
                if (searchMap.get("agent")!=null && !"".equals(searchMap.get("agent"))) {
                	predicateList.add(cb.like(root.get("agent").as(String.class), "%"+(String)searchMap.get("agent")+"%"));
                }
                // 评论文字
                if (searchMap.get("text")!=null && !"".equals(searchMap.get("text"))) {
                	predicateList.add(cb.like(root.get("text").as(String.class), "%"+(String)searchMap.get("text")+"%"));
                }
                // 评论类型
                if (searchMap.get("type")!=null && !"".equals(searchMap.get("type"))) {
                	predicateList.add(cb.like(root.get("type").as(String.class), "%"+(String)searchMap.get("type")+"%"));
                }
                // 评论状态
                if (searchMap.get("status")!=null && !"".equals(searchMap.get("status"))) {
                	predicateList.add(cb.like(root.get("status").as(String.class), "%"+(String)searchMap.get("status")+"%"));
                }
				
				return cb.and( predicateList.toArray(new Predicate[predicateList.size()]));

			}
		};

	}

}
