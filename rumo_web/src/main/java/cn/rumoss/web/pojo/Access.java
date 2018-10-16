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
@Table(name="typecho_access")
public class Access implements Serializable{

	@Id
	private Long id;//ID


	
	private String ua;//UA
	private String url;//URL
	private String ip;//IP
	private String date;//DATE

	
	public Long getId() {		
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	public String getUa() {		
		return ua;
	}
	public void setUa(String ua) {
		this.ua = ua;
	}

	public String getUrl() {		
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}

	public String getIp() {		
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getDate() {		
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}


	
}
