package cn.rumoss.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import cn.rumoss.web.pojo.Access;
/**
 * 数据访问接口
 * @author Administrator
 *
 */
public interface AccessDao extends JpaRepository<Access,String>,JpaSpecificationExecutor<Access>{
	
}
