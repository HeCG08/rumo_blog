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


import cn.rumoss.web.dao.AccessDao;
import cn.rumoss.web.pojo.Access;

/**
 * 服务层
 * 
 * @author Administrator
 *
 */
@Service
public class AccessService {

	@Autowired
	private AccessDao accessDao;
	
	@Autowired
	private IdWorker idWorker;

	/**
	 * 查询全部列表
	 * @return
	 */
	public List<Access> findAll() {
		return accessDao.findAll();
	}

	
	/**
	 * 条件查询+分页
	 * @param whereMap
	 * @param page
	 * @param size
	 * @return
	 */
	public Page<Access> findSearch(Map whereMap, int page, int size) {
		Specification<Access> specification = createSpecification(whereMap);
		PageRequest pageRequest =  PageRequest.of(page-1, size);
		return accessDao.findAll(specification, pageRequest);
	}

	
	/**
	 * 条件查询
	 * @param whereMap
	 * @return
	 */
	public List<Access> findSearch(Map whereMap) {
		Specification<Access> specification = createSpecification(whereMap);
		return accessDao.findAll(specification);
	}

	/**
	 * 根据ID查询实体
	 * @param id
	 * @return
	 */
	public Access findById(String id) {
		return accessDao.findById(id).get();
	}

	/**
	 * 增加
	 * @param access
	 */
	public void add(Access access) {
		access.setId( idWorker.nextId() );
		accessDao.save(access);
	}

	/**
	 * 修改
	 * @param access
	 */
	public void update(Access access) {
		accessDao.save(access);
	}

	/**
	 * 删除
	 * @param id
	 */
	public void deleteById(String id) {
		accessDao.deleteById(id);
	}

	/**
	 * 动态条件构建
	 * @param searchMap
	 * @return
	 */
	private Specification<Access> createSpecification(Map searchMap) {

		return new Specification<Access>() {

			@Override
			public Predicate toPredicate(Root<Access> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> predicateList = new ArrayList<Predicate>();
                // UA
                if (searchMap.get("ua")!=null && !"".equals(searchMap.get("ua"))) {
                	predicateList.add(cb.like(root.get("ua").as(String.class), "%"+(String)searchMap.get("ua")+"%"));
                }
                // URL
                if (searchMap.get("url")!=null && !"".equals(searchMap.get("url"))) {
                	predicateList.add(cb.like(root.get("url").as(String.class), "%"+(String)searchMap.get("url")+"%"));
                }
                // IP
                if (searchMap.get("ip")!=null && !"".equals(searchMap.get("ip"))) {
                	predicateList.add(cb.like(root.get("ip").as(String.class), "%"+(String)searchMap.get("ip")+"%"));
                }
                // DATE
                if (searchMap.get("date")!=null && !"".equals(searchMap.get("date"))) {
                	predicateList.add(cb.like(root.get("date").as(String.class), "%"+(String)searchMap.get("date")+"%"));
                }
				
				return cb.and( predicateList.toArray(new Predicate[predicateList.size()]));

			}
		};

	}

}
