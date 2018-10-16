package cn.rumoss.web.pojo;

import javax.persistence.*;
import java.io.Serializable;
/**
 * 配置表实体类
 * @author Administrator
 *
 */
@Entity
@Table(name="typecho_relationships")
public class Relationship implements Serializable{


	
	private Long cid;//
	private Long mid;//项目主键

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

	public Long getCid() {
		return cid;
	}
	public void setCid(Long cid) {
		this.cid = cid;
	}

	public Long getMid() {		
		return mid;
	}
	public void setMid(Long mid) {
		this.mid = mid;
	}


	
}
