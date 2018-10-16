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


import cn.rumoss.web.dao.RelationshipDao;
import cn.rumoss.web.pojo.Relationship;

/**
 * 配置表服务层
 * 
 * @author Administrator
 *
 */
@Service
public class RelationshipService {

	@Autowired
	private RelationshipDao relationshipDao;
	
	@Autowired
	private IdWorker idWorker;

	/**
	 * 查询全部列表
	 * @return
	 */
	public List<Relationship> findAll() {
		return relationshipDao.findAll();
	}

	
	/**
	 * 条件查询+分页
	 * @param whereMap
	 * @param page
	 * @param size
	 * @return
	 */
	public Page<Relationship> findSearch(Map whereMap, int page, int size) {
		Specification<Relationship> specification = createSpecification(whereMap);
		PageRequest pageRequest =  PageRequest.of(page-1, size);
		return relationshipDao.findAll(specification, pageRequest);
	}

	
	/**
	 * 条件查询
	 * @param whereMap
	 * @return
	 */
	public List<Relationship> findSearch(Map whereMap) {
		Specification<Relationship> specification = createSpecification(whereMap);
		return relationshipDao.findAll(specification);
	}

	/**
	 * 根据ID查询实体
	 * @param id
	 * @return
	 */
	public Relationship findById(String id) {
		return relationshipDao.findById(id).get();
	}

	/**
	 * 增加
	 * @param relationship
	 */
	public void add(Relationship relationship) {
		//relationship.setId( idWorker.nextId()+"" );
		relationshipDao.save(relationship);
	}

	/**
	 * 修改
	 * @param relationship
	 */
	public void update(Relationship relationship) {
		relationshipDao.save(relationship);
	}

	/**
	 * 删除
	 * @param id
	 */
	public void deleteById(String id) {
		relationshipDao.deleteById(id);
	}

	/**
	 * 动态条件构建
	 * @param searchMap
	 * @return
	 */
	private Specification<Relationship> createSpecification(Map searchMap) {

		return new Specification<Relationship>() {

			@Override
			public Predicate toPredicate(Root<Relationship> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> predicateList = new ArrayList<Predicate>();
				
				return cb.and( predicateList.toArray(new Predicate[predicateList.size()]));

			}
		};

	}

}
