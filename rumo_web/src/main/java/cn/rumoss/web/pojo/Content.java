package cn.rumoss.web.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
/**
 * 内容表(post-文章,draft-草稿,page-页面,link-链接,attachment-文件)实体类
 * @author Administrator
 *
 */
@Entity
@Table(name="typecho_contents")
public class Content implements Serializable{

	@Id
	private Long cid;//post表主键


	
	private String title;//post表主键
	private String slug;//内容缩略名
	private Long created;//内容生成时的GMT unix时间戳
	private Long modified;//内容更改时的GMT unix时间戳
	private String text;//内容文字
	private Long order;//排序
	private Long authorId;//内容所属用户id
	private String template;//内容使用的模板
	private String type;//内容类别
	private String status;//内容状态
	private String password;//受保护内容,此字段对应内容保护密码
	private Long commentsNum;//内容所属评论数,冗余字段
	private String allowComment;//是否允许评论
	private String allowPing;//是否允许ping
	private String allowFeed;//允许出现在聚合中
	private Long parent;//父级内容

	
	public Long getCid() {		
		return cid;
	}
	public void setCid(Long cid) {
		this.cid = cid;
	}

	public String getTitle() {		
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getSlug() {		
		return slug;
	}
	public void setSlug(String slug) {
		this.slug = slug;
	}

	public Long getCreated() {		
		return created;
	}
	public void setCreated(Long created) {
		this.created = created;
	}

	public Long getModified() {		
		return modified;
	}
	public void setModified(Long modified) {
		this.modified = modified;
	}

	public String getText() {		
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}

	public Long getOrder() {		
		return order;
	}
	public void setOrder(Long order) {
		this.order = order;
	}

	public Long getAuthorId() {		
		return authorId;
	}
	public void setAuthorId(Long authorId) {
		this.authorId = authorId;
	}

	public String getTemplate() {		
		return template;
	}
	public void setTemplate(String template) {
		this.template = template;
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

	public String getPassword() {		
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public Long getCommentsNum() {		
		return commentsNum;
	}
	public void setCommentsNum(Long commentsNum) {
		this.commentsNum = commentsNum;
	}

	public String getAllowComment() {		
		return allowComment;
	}
	public void setAllowComment(String allowComment) {
		this.allowComment = allowComment;
	}

	public String getAllowPing() {		
		return allowPing;
	}
	public void setAllowPing(String allowPing) {
		this.allowPing = allowPing;
	}

	public String getAllowFeed() {		
		return allowFeed;
	}
	public void setAllowFeed(String allowFeed) {
		this.allowFeed = allowFeed;
	}

	public Long getParent() {		
		return parent;
	}
	public void setParent(Long parent) {
		this.parent = parent;
	}


	
}
