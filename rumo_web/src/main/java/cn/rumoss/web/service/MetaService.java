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


import cn.rumoss.web.dao.MetaDao;
import cn.rumoss.web.pojo.Meta;

/**
 * 项目表(category-分类,tag-标签,link_category-链接分类)服务层
 * 
 * @author Administrator
 *
 */
@Service
public class MetaService {

	@Autowired
	private MetaDao metaDao;
	
	@Autowired
	private IdWorker idWorker;

	/**
	 * 查询全部列表
	 * @return
	 */
	public List<Meta> findAll() {
		return metaDao.findAll();
	}

	
	/**
	 * 条件查询+分页
	 * @param whereMap
	 * @param page
	 * @param size
	 * @return
	 */
	public Page<Meta> findSearch(Map whereMap, int page, int size) {
		Specification<Meta> specification = createSpecification(whereMap);
		PageRequest pageRequest =  PageRequest.of(page-1, size);
		return metaDao.findAll(specification, pageRequest);
	}

	
	/**
	 * 条件查询
	 * @param whereMap
	 * @return
	 */
	public List<Meta> findSearch(Map whereMap) {
		Specification<Meta> specification = createSpecification(whereMap);
		return metaDao.findAll(specification);
	}

	/**
	 * 根据ID查询实体
	 * @param id
	 * @return
	 */
	public Meta findById(String id) {
		return metaDao.findById(id).get();
	}

	/**
	 * 增加
	 * @param meta
	 */
	public void add(Meta meta) {
		meta.setMid( idWorker.nextId() );
		metaDao.save(meta);
	}

	/**
	 * 修改
	 * @param meta
	 */
	public void update(Meta meta) {
		metaDao.save(meta);
	}

	/**
	 * 删除
	 * @param id
	 */
	public void deleteById(String id) {
		metaDao.deleteById(id);
	}

	/**
	 * 动态条件构建
	 * @param searchMap
	 * @return
	 */
	private Specification<Meta> createSpecification(Map searchMap) {

		return new Specification<Meta>() {

			@Override
			public Predicate toPredicate(Root<Meta> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> predicateList = new ArrayList<Predicate>();
                // 名称
                if (searchMap.get("name")!=null && !"".equals(searchMap.get("name"))) {
                	predicateList.add(cb.like(root.get("name").as(String.class), "%"+(String)searchMap.get("name")+"%"));
                }
                // 名称
                if (searchMap.get("slug")!=null && !"".equals(searchMap.get("slug"))) {
                	predicateList.add(cb.like(root.get("slug").as(String.class), "%"+(String)searchMap.get("slug")+"%"));
                }
                // 项目类型
                if (searchMap.get("type")!=null && !"".equals(searchMap.get("type"))) {
                	predicateList.add(cb.like(root.get("type").as(String.class), "%"+(String)searchMap.get("type")+"%"));
                }
                // 选项描述
                if (searchMap.get("description")!=null && !"".equals(searchMap.get("description"))) {
                	predicateList.add(cb.like(root.get("description").as(String.class), "%"+(String)searchMap.get("description")+"%"));
                }
				
				return cb.and( predicateList.toArray(new Predicate[predicateList.size()]));

			}
		};

	}

}
