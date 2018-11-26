package demo;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class Utils {
    public String getFileNameByIp(String ip){
        StringBuffer sbf = new StringBuffer();
        String[] ip_arr = ip.split("\\.");
        for (String s : ip_arr){
            sbf.append(insertZero(s,3));
        }
        sbf.append(getTimeStr());
        sbf.append(getRandom(3));
        return sbf.toString();
    }

    private String insertZero(String s, int i) {
        StringBuffer sbf = new StringBuffer();
        sbf.append(s);
        while (sbf.length()<i){
            sbf.insert(0,"0");
        }
        return sbf.toString();
    }

    public String getTimeStr() {
        String format = "yyyyMMddHHmmss";
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        return sdf.format(new Date());
    }

    public String getRandom(int len){
        StringBuffer sbf = new StringBuffer();
        Random random = new Random();
        for (int i=0; i<len; i++){
            sbf.append(random.nextInt(10));
        }
        return sbf.toString();
    }
}
