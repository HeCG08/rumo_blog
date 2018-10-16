package cn.rumoss.web.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
/**
 * 评论表实体类
 * @author Administrator
 *
 */
@Entity
@Table(name="typecho_comments")
public class Comment implements Serializable{

	@Id
	private Long coid;//comment表主键


	
	private Long cid;//post表主键,关联字段
	private Long created;//评论生成时的GMT unix时间戳
	private String author;//评论作者
	private Long authorId;//评论所属用户id
	private Long ownerId;//评论所属内容作者id
	private String mail;//评论者邮件
	private String url;//评论者网址
	private String ip;//评论者ip地址
	private String agent;//评论者客户端
	private String text;//评论文字
	private String type;//评论类型
	private String status;//评论状态
	private Long parent;//父级评论

	
	public Long getCoid() {		
		return coid;
	}
	public void setCoid(Long coid) {
		this.coid = coid;
	}

	public Long getCid() {		
		return cid;
	}
	public void setCid(Long cid) {
		this.cid = cid;
	}

	public Long getCreated() {		
		return created;
	}
	public void setCreated(Long created) {
		this.created = created;
	}

	public String getAuthor() {		
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}

	public Long getAuthorId() {		
		return authorId;
	}
	public void setAuthorId(Long authorId) {
		this.authorId = authorId;
	}

	public Long getOwnerId() {		
		return ownerId;
	}
	public void setOwnerId(Long ownerId) {
		this.ownerId = ownerId;
	}

	public String getMail() {		
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
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

	public String getAgent() {		
		return agent;
	}
	public void setAgent(String agent) {
		this.agent = agent;
	}

	public String getText() {		
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}

	public String getType() {		
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	public String getStatus() {		
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	public Long getParent() {		
		return parent;
	}
	public void setParent(Long parent) {
		this.parent = parent;
	}


	
}
