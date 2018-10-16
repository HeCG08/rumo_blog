package cn.rumoss.web.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
/**
 * 用户表实体类
 * @author Administrator
 *
 */
@Entity
@Table(name="typecho_users")
public class User implements Serializable{

	@Id
	private Long uid;//user表主键


	
	private String name;//用户名称
	private String password;//用户名称
	private String mail;//用户的邮箱
	private String url;//用户的主页
	private String screenName;//用户显示的名称
	private Long created;//用户注册时的GMT unix时间戳
	private Long activated;//最后活动时间
	private Long logged;//上次登录最后活跃时间
	private String group;//用户组
	private String authCode;//用户登录验证码

	
	public Long getUid() {		
		return uid;
	}
	public void setUid(Long uid) {
		this.uid = uid;
	}

	public String getName() {		
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {		
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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

	public String getScreenName() {		
		return screenName;
	}
	public void setScreenName(String screenName) {
		this.screenName = screenName;
	}

	public Long getCreated() {		
		return created;
	}
	public void setCreated(Long created) {
		this.created = created;
	}

	public Long getActivated() {		
		return activated;
	}
	public void setActivated(Long activated) {
		this.activated = activated;
	}

	public Long getLogged() {		
		return logged;
	}
	public void setLogged(Long logged) {
		this.logged = logged;
	}

	public String getGroup() {		
		return group;
	}
	public void setGroup(String group) {
		this.group = group;
	}

	public String getAuthCode() {		
		return authCode;
	}
	public void setAuthCode(String authCode) {
		this.authCode = authCode;
	}


	
}
