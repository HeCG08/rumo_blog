package cn.rumoss.web.pojo;

import javax.persistence.*;
import java.io.Serializable;
/**
 * 配置表实体类
 * @author Administrator
 *
 */
@Entity
@Table(name="typecho_options")
public class Option implements Serializable{


	
	private String name;//配置名称
	private Long user;//配置所属用户,默认为0(全局配置)
	private String value;//配置值

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "id", nullable = false)
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {		
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public Long getUser() {		
		return user;
	}
	public void setUser(Long user) {
		this.user = user;
	}

	public String getValue() {		
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}


	
}
