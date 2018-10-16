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


import cn.rumoss.web.dao.ContentDao;
import cn.rumoss.web.pojo.Content;

/**
 * 内容表(post-文章,draft-草稿,page-页面,link-链接,attachment-文件)服务层
 * 
 * @author Administrator
 *
 */
@Service
public class ContentService {

	@Autowired
	private ContentDao contentDao;
	
	@Autowired
	private IdWorker idWorker;

	/**
	 * 查询全部列表
	 * @return
	 */
	public List<Content> findAll() {
		return contentDao.findAll();
	}

	
	/**
	 * 条件查询+分页
	 * @param whereMap
	 * @param page
	 * @param size
	 * @return
	 */
	public Page<Content> findSearch(Map whereMap, int page, int size) {
		Specification<Content> specification = createSpecification(whereMap);
		PageRequest pageRequest =  PageRequest.of(page-1, size);
		return contentDao.findAll(specification, pageRequest);
	}

	
	/**
	 * 条件查询
	 * @param whereMap
	 * @return
	 */
	public List<Content> findSearch(Map whereMap) {
		Specification<Content> specification = createSpecification(whereMap);
		return contentDao.findAll(specification);
	}

	/**
	 * 根据ID查询实体
	 * @param id
	 * @return
	 */
	public Content findById(String id) {
		return contentDao.findById(id).get();
	}

	/**
	 * 增加
	 * @param content
	 */
	public void add(Content content) {
		content.setCid( idWorker.nextId() );
		contentDao.save(content);
	}

	/**
	 * 修改
	 * @param content
	 */
	public void update(Content content) {
		contentDao.save(content);
	}

	/**
	 * 删除
	 * @param id
	 */
	public void deleteById(String id) {
		contentDao.deleteById(id);
	}

	/**
	 * 动态条件构建
	 * @param searchMap
	 * @return
	 */
	private Specification<Content> createSpecification(Map searchMap) {

		return new Specification<Content>() {

			@Override
			public Predicate toPredicate(Root<Content> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> predicateList = new ArrayList<Predicate>();
                // post表主键
                if (searchMap.get("title")!=null && !"".equals(searchMap.get("title"))) {
                	predicateList.add(cb.like(root.get("title").as(String.class), "%"+(String)searchMap.get("title")+"%"));
                }
                // 内容缩略名
                if (searchMap.get("slug")!=null && !"".equals(searchMap.get("slug"))) {
                	predicateList.add(cb.like(root.get("slug").as(String.class), "%"+(String)searchMap.get("slug")+"%"));
                }
                // 内容文字
                if (searchMap.get("text")!=null && !"".equals(searchMap.get("text"))) {
                	predicateList.add(cb.like(root.get("text").as(String.class), "%"+(String)searchMap.get("text")+"%"));
                }
                // 内容使用的模板
                if (searchMap.get("template")!=null && !"".equals(searchMap.get("template"))) {
                	predicateList.add(cb.like(root.get("template").as(String.class), "%"+(String)searchMap.get("template")+"%"));
                }
                // 内容类别
                if (searchMap.get("type")!=null && !"".equals(searchMap.get("type"))) {
                	predicateList.add(cb.like(root.get("type").as(String.class), "%"+(String)searchMap.get("type")+"%"));
                }
                // 内容状态
                if (searchMap.get("status")!=null && !"".equals(searchMap.get("status"))) {
                	predicateList.add(cb.like(root.get("status").as(String.class), "%"+(String)searchMap.get("status")+"%"));
                }
                // 受保护内容,此字段对应内容保护密码
                if (searchMap.get("password")!=null && !"".equals(searchMap.get("password"))) {
                	predicateList.add(cb.like(root.get("password").as(String.class), "%"+(String)searchMap.get("password")+"%"));
                }
                // 是否允许评论
                if (searchMap.get("allowComment")!=null && !"".equals(searchMap.get("allowComment"))) {
                	predicateList.add(cb.like(root.get("allowComment").as(String.class), "%"+(String)searchMap.get("allowComment")+"%"));
                }
                // 是否允许ping
                if (searchMap.get("allowPing")!=null && !"".equals(searchMap.get("allowPing"))) {
                	predicateList.add(cb.like(root.get("allowPing").as(String.class), "%"+(String)searchMap.get("allowPing")+"%"));
                }
                // 允许出现在聚合中
                if (searchMap.get("allowFeed")!=null && !"".equals(searchMap.get("allowFeed"))) {
                	predicateList.add(cb.like(root.get("allowFeed").as(String.class), "%"+(String)searchMap.get("allowFeed")+"%"));
                }
				
				return cb.and( predicateList.toArray(new Predicate[predicateList.size()]));

			}
		};

	}

}
