package cn.rumoss.common.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * 日期工具类
 */
public class DateUtil {

    public static final String DATE_FORMAT_001 = "yyyy年MM月dd日";
    public static final String DATE_FORMAT_002 = "MMMM d , yyyy";

    /**
     *  date类型转换为String类型
     * @param data
     * @param formatType yyyy-MM-dd HH:mm:ss / yyyy年MM月dd日 HH时mm分ss秒
     * @return
     */
    public static String dateToString(Date data, String formatType) {
        return new SimpleDateFormat(formatType).format(data);
    }

    /**
     *  date类型转换为String类型(英文表达)
     * @param data
     * @param formatType yyyy-MM-dd HH:mm:ss / yyyy年MM月dd日 HH时mm分ss秒
     * @return
     */
    public static String dateToStringEN(Date data, String formatType) {
        return new SimpleDateFormat(formatType, Locale.ENGLISH).format(data);
    }

    /**
     *  long转换为String类型
     * @param currentTime
     * @param formatType
     * @return
     */
    public static String longToString(long currentTime, String formatType) {
        Date date = new Date(currentTime); // long类型转成Date类型
        String strTime = dateToString(date, formatType); // date类型转成String
        return strTime;
    }

    /**
     *  long转换为String类型(英文表达)
     * @param currentTime
     * @param formatType
     * @return
     */
    public static String longToStringEN(long currentTime, String formatType) {
        Date date = new Date(currentTime); // long类型转成Date类型
        String strTime = dateToStringEN(date, formatType); // date类型转成String
        return strTime;
    }

}
