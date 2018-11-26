package demo;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.*;

public class FileUploadTool {
    private Utils utils = null;
    private String ip = null;
    private List<FileItem> fileItem = null;
    //保存的文件名字
    private List<String> names = new ArrayList<>();
    //保存普通数据
    private Map<String,List<String>> param_map = new HashMap<>();
    //保存文件
    private Map<String,FileItem> file_map = new HashMap<>();
    //dirTemp文件保存的临时文件夹，maxSize限制文件大小
    public FileUploadTool(HttpServletRequest request,int MaxSize,String dirTemp) throws Exception{
        this.ip = request.getRemoteAddr();//获取ip地址
        this.utils = new Utils();
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setRepository(new File(dirTemp));
        ServletFileUpload upload = new ServletFileUpload(factory);
        if (MaxSize > 0)
            upload.setFileSizeMax(MaxSize);
        else
            upload.setFileSizeMax(5*1024*1024);
        fileItem = upload.parseRequest(request);
        handle();
    }

    public void handle() throws Exception {
        for (FileItem item: fileItem){
            if (item.isFormField()){//普通数据
                List<String> tempValue = null;
                String paramName = item.getFieldName();//普通数据名称
                String paramValue = item.getString("UTF-8");
                if (!param_map.containsKey(paramName)){
                    tempValue = new ArrayList<>();
                }else {
                    tempValue = param_map.get(paramName);
                }
                tempValue.add(paramValue);
                param_map.put(paramName,tempValue);
            }else {
                file_map.put(item.getName(),item);
            }
        }
    }

    public List<String> saveFiles(String dirSave) throws IOException {
        Set<String> keys = file_map.keySet();
        Iterator<String> iterator = keys.iterator();
        while (iterator.hasNext()){
            String key = iterator.next();
            FileItem item = file_map.get(key);
            String ext = key.split("\\.")[1];
            String fileName = utils.getFileNameByIp(ip) + "." + ext;
            InputStream is = null;
            FileOutputStream fos = null;
            try{
                is = item.getInputStream();
                fos = new FileOutputStream(dirSave + File.separator + fileName);
                byte[] bytes = new byte[1024];
                while ((is.read(bytes, 0, 1024)) != -1) {
                    fos.write(bytes);
                }
            }catch (Exception e){
                e.printStackTrace();
            }finally {
                try{
                    if (fos != null)
                        fos.close();
                    if (is != null)
                        is.close();
                }catch (Exception e){
                    throw e;
                }
            }
            names.add(fileName);
        }
        return names;
    }

    public String getParameter(String name){
        String value = null;
        List<String> temp = param_map.get(name);
        if (temp != null)
            value = temp.get(0);
        return value;
    }

    public String[] getParameterValues(String name){
        String[] values = null;
        List<String> temp = param_map.get(name);
        if (temp != null){
            values = temp.toArray(new String[]{});
        }
        return values;
    }
}
