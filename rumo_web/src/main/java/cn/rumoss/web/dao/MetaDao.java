package cn.rumoss.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import cn.rumoss.web.pojo.Meta;
/**
 * 项目表(category-分类,tag-标签,link_category-链接分类)数据访问接口
 * @author Administrator
 *
 */
public interface MetaDao extends JpaRepository<Meta,String>,JpaSpecificationExecutor<Meta>{
	
}
