package cn.rumoss.web.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
/**
 * 项目表(category-分类,tag-标签,link_category-链接分类)实体类
 * @author Administrator
 *
 */
@Entity
@Table(name="typecho_metas")
public class Meta implements Serializable{

	@Id
	private Long mid;//项目主键


	
	private String name;//名称
	private String slug;//名称
	private String type;//项目类型
	private String description;//选项描述
	private Long count;//项目所属内容个数
	private Long order;//项目排序
	private Long parent;//

	
	public Long getMid() {		
		return mid;
	}
	public void setMid(Long mid) {
		this.mid = mid;
	}

	public String getName() {		
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getSlug() {		
		return slug;
	}
	public void setSlug(String slug) {
		this.slug = slug;
	}

	public String getType() {		
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	public String getDescription() {		
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	public Long getCount() {		
		return count;
	}
	public void setCount(Long count) {
		this.count = count;
	}

	public Long getOrder() {		
		return order;
	}
	public void setOrder(Long order) {
		this.order = order;
	}

	public Long getParent() {		
		return parent;
	}
	public void setParent(Long parent) {
		this.parent = parent;
	}


	
}
