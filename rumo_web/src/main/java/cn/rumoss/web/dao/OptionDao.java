package cn.rumoss.web.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import cn.rumoss.web.pojo.Option;
/**
 * 配置表数据访问接口
 * @author Administrator
 *
 */
public interface OptionDao extends JpaRepository<Option,String>,JpaSpecificationExecutor<Option>{
	
}
