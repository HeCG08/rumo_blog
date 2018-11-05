package cn.rumoss.common.util;

import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * RmBlog其他通用工具类
 */
public class RmUtil {

    /**
     * 根据用户邮箱获取Avatar头像
     *
     * @param mail
     * @return
     */
    public static String getAvatarUrl(String mail) {
        String avatarUrl = "https://secure.gravatar.com/avatar/";
        if (StringUtils.isBlank(mail)) {
            mail = "he.changgen@qq.com";
        }
        String md5 = EncryptUtil.MD5encode(mail.trim().toLowerCase());
        return avatarUrl + md5 + "?s=80&r=G&d=";
    }

    /**
     * 翻译Long类型日期
     *
     * @param createStr
     * @return
     */
    public static String transDate(String createStr) {
        if (StringUtils.isBlank(createStr)) {
            return DateUtil.longToStringEN(new Date().getTime(), DateUtil.DATE_FORMAT_002);
        }
        return DateUtil.longToStringEN(Long.valueOf(createStr.replace(",", "")) * 1000, DateUtil.DATE_FORMAT_002);
    }

    /**
     *  获取客户端IP
     * @param request
     * @return
     */
    public static String getClientIPAdrress(HttpServletRequest request) {
        String Xip = request.getHeader("X-Real-IP");
        String XFor = request.getHeader("X-Forwarded-For");
        if (StringUtils.isNotEmpty(XFor) && !"unKnown".equalsIgnoreCase(XFor)) {
            //多次反向代理后会有多个ip值，第一个ip才是真实ip
            int index = XFor.indexOf(",");
            if (index != -1) {
                return XFor.substring(0, index);
            } else {
                return XFor;
            }
        }
        XFor = Xip;
        if (StringUtils.isNotEmpty(XFor) && !"unKnown".equalsIgnoreCase(XFor)) {
            return XFor;
        }
        if (StringUtils.isBlank(XFor) || "unknown".equalsIgnoreCase(XFor)) {
            XFor = request.getHeader("Proxy-Client-IP");
        }
        if (StringUtils.isBlank(XFor) || "unknown".equalsIgnoreCase(XFor)) {
            XFor = request.getHeader("WL-Proxy-Client-IP");
        }
        if (StringUtils.isBlank(XFor) || "unknown".equalsIgnoreCase(XFor)) {
            XFor = request.getHeader("HTTP_CLIENT_IP");
        }
        if (StringUtils.isBlank(XFor) || "unknown".equalsIgnoreCase(XFor)) {
            XFor = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (StringUtils.isBlank(XFor) || "unknown".equalsIgnoreCase(XFor)) {
            XFor = request.getRemoteAddr();
        }
        return XFor;
    }

}
