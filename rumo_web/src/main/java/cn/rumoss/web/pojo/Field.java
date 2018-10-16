package cn.rumoss.web.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
/**
 * 实体类
 * @author Administrator
 *
 */
@Entity
@Table(name="typecho_fields")
public class Field implements Serializable{

	@Id
	private Long cid;//


	
	private String name;//
	private String type;//
	private String str_value;//
	private Long int_value;//
	private Float float_value;//

	
	public Long getCid() {		
		return cid;
	}
	public void setCid(Long cid) {
		this.cid = cid;
	}

	public String getName() {		
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getType() {		
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	public String getStr_value() {		
		return str_value;
	}
	public void setStr_value(String str_value) {
		this.str_value = str_value;
	}

	public Long getInt_value() {		
		return int_value;
	}
	public void setInt_value(Long int_value) {
		this.int_value = int_value;
	}

	public Float getFloat_value() {		
		return float_value;
	}
	public void setFloat_value(Float float_value) {
		this.float_value = float_value;
	}


	
}
