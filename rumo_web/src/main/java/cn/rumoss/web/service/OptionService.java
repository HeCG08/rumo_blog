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


import cn.rumoss.web.dao.OptionDao;
import cn.rumoss.web.pojo.Option;

/**
 * 配置表服务层
 * 
 * @author Administrator
 *
 */
@Service
public class OptionService {

	@Autowired
	private OptionDao optionDao;
	
	@Autowired
	private IdWorker idWorker;

	/**
	 * 查询全部列表
	 * @return
	 */
	public List<Option> findAll() {
		return optionDao.findAll();
	}

	
	/**
	 * 条件查询+分页
	 * @param whereMap
	 * @param page
	 * @param size
	 * @return
	 */
	public Page<Option> findSearch(Map whereMap, int page, int size) {
		Specification<Option> specification = createSpecification(whereMap);
		PageRequest pageRequest =  PageRequest.of(page-1, size);
		return optionDao.findAll(specification, pageRequest);
	}

	
	/**
	 * 条件查询
	 * @param whereMap
	 * @return
	 */
	public List<Option> findSearch(Map whereMap) {
		Specification<Option> specification = createSpecification(whereMap);
		return optionDao.findAll(specification);
	}

	/**
	 * 根据ID查询实体
	 * @param id
	 * @return
	 */
	public Option findById(String id) {
		return optionDao.findById(id).get();
	}

	/**
	 * 增加
	 * @param option
	 */
	public void add(Option option) {
		//option.setId( idWorker.nextId()+"" );
		optionDao.save(option);
	}

	/**
	 * 修改
	 * @param option
	 */
	public void update(Option option) {
		optionDao.save(option);
	}

	/**
	 * 删除
	 * @param id
	 */
	public void deleteById(String id) {
		optionDao.deleteById(id);
	}

	/**
	 * 动态条件构建
	 * @param searchMap
	 * @return
	 */
	private Specification<Option> createSpecification(Map searchMap) {

		return new Specification<Option>() {

			@Override
			public Predicate toPredicate(Root<Option> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> predicateList = new ArrayList<Predicate>();
                // 配置名称
                if (searchMap.get("name")!=null && !"".equals(searchMap.get("name"))) {
                	predicateList.add(cb.like(root.get("name").as(String.class), "%"+(String)searchMap.get("name")+"%"));
                }
                // 配置值
                if (searchMap.get("value")!=null && !"".equals(searchMap.get("value"))) {
                	predicateList.add(cb.like(root.get("value").as(String.class), "%"+(String)searchMap.get("value")+"%"));
                }
				
				return cb.and( predicateList.toArray(new Predicate[predicateList.size()]));

			}
		};

	}

}
