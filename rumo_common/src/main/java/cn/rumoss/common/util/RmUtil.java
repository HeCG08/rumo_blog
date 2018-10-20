package cn.rumoss.common.util;

import org.apache.commons.lang3.StringUtils;

/**
 *  RmBlog其他通用工具类
 */
public class RmUtil {

    /**
     *  根据用户邮箱获取Avatar头像
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

}
