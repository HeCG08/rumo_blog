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


import cn.rumoss.web.dao.FieldDao;
import cn.rumoss.web.pojo.Field;

/**
 * 服务层
 * 
 * @author Administrator
 *
 */
@Service
public class FieldService {

	@Autowired
	private FieldDao fieldDao;
	
	@Autowired
	private IdWorker idWorker;

	/**
	 * 查询全部列表
	 * @return
	 */
	public List<Field> findAll() {
		return fieldDao.findAll();
	}

	
	/**
	 * 条件查询+分页
	 * @param whereMap
	 * @param page
	 * @param size
	 * @return
	 */
	public Page<Field> findSearch(Map whereMap, int page, int size) {
		Specification<Field> specification = createSpecification(whereMap);
		PageRequest pageRequest =  PageRequest.of(page-1, size);
		return fieldDao.findAll(specification, pageRequest);
	}

	
	/**
	 * 条件查询
	 * @param whereMap
	 * @return
	 */
	public List<Field> findSearch(Map whereMap) {
		Specification<Field> specification = createSpecification(whereMap);
		return fieldDao.findAll(specification);
	}

	/**
	 * 根据ID查询实体
	 * @param id
	 * @return
	 */
	public Field findById(String id) {
		return fieldDao.findById(id).get();
	}

	/**
	 * 增加
	 * @param field
	 */
	public void add(Field field) {
		field.setCid( idWorker.nextId() );
		fieldDao.save(field);
	}

	/**
	 * 修改
	 * @param field
	 */
	public void update(Field field) {
		fieldDao.save(field);
	}

	/**
	 * 删除
	 * @param id
	 */
	public void deleteById(String id) {
		fieldDao.deleteById(id);
	}

	/**
	 * 动态条件构建
	 * @param searchMap
	 * @return
	 */
	private Specification<Field> createSpecification(Map searchMap) {

		return new Specification<Field>() {

			@Override
			public Predicate toPredicate(Root<Field> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> predicateList = new ArrayList<Predicate>();
                // 
                if (searchMap.get("name")!=null && !"".equals(searchMap.get("name"))) {
                	predicateList.add(cb.like(root.get("name").as(String.class), "%"+(String)searchMap.get("name")+"%"));
                }
                // 
                if (searchMap.get("type")!=null && !"".equals(searchMap.get("type"))) {
                	predicateList.add(cb.like(root.get("type").as(String.class), "%"+(String)searchMap.get("type")+"%"));
                }
                // 
                if (searchMap.get("str_value")!=null && !"".equals(searchMap.get("str_value"))) {
                	predicateList.add(cb.like(root.get("str_value").as(String.class), "%"+(String)searchMap.get("str_value")+"%"));
                }
				
				return cb.and( predicateList.toArray(new Predicate[predicateList.size()]));

			}
		};

	}

}
