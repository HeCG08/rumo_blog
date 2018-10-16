package cn.rumoss.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import cn.rumoss.web.pojo.Field;
/**
 * 数据访问接口
 * @author Administrator
 *
 */
public interface FieldDao extends JpaRepository<Field,String>,JpaSpecificationExecutor<Field>{
	
}
