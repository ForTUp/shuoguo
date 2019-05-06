package com.dsg.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;

public class GsonUtil {

private static Gson gson = null;  
	
    static {  
        if (gson == null) {  
            gson = new Gson();  
        }  
    }  
  
  
    private GsonUtil() {  
    }  
  
  
    /** 
     * 将object对象转成json字符串 
     *  
     * @param object 
     * @return 
     */  
    public static String GsonString(Object object) {  
        String gsonString = null;  
        if (gson != null) {  
            gsonString = gson.toJson(object);  
        }  
        return gsonString;  
    }  
  
  
    /** 
     * 将gsonString转成泛型bean 
     *  
     * @param gsonString 
     * @param cls 
     * @return 
     */  
    public static <T> T GsonToBean(String gsonString, Class<T> cls) {  
        T t = null;  
        if (gson != null) {  
            t = gson.fromJson(gsonString, cls);  
        }  
        return t;  
    }  
  
  
   /** 
     * 转成List 
     * @param gsonString 
     * @param cls 
     * @return 
     */  
	public static <T> List<T> GsonToList(String gsonString, Class<T> cls) {  
        List<T> list = new ArrayList<T>();
        if (gson != null) {  
        	 JsonArray arry = new JsonParser().parse(gsonString).getAsJsonArray();  
             for (JsonElement jsonElement : arry) {  
                 list.add(gson.fromJson(jsonElement, cls));  
             }  
        }  
        return list;  
    }  
  
	 
	   /** 
	     * 转成List <List<T>>
	     * @param gsonString
	     * @param cls 
	     * @return 
	     */  
		public static <T> List<List<T>> GsonToListList(String gsonString, Class<T> cls) {  
	        List<T> list = new ArrayList<T>();
	        List<List<T>> list2=new ArrayList<List<T>>();
	        if (gson != null) {  
	        	 JsonArray arry = new JsonParser().parse(gsonString).getAsJsonArray();  
	             for (JsonElement jsonElement : arry) {  
		        	 JsonArray arry2 = jsonElement.getAsJsonArray(); 
		        	 list  = new ArrayList<T>();
		             for (JsonElement jsonElement2 : arry2) {  
		                 list.add(gson.fromJson(jsonElement2, cls));  
		             }
		             list2.add(list);
	             }  
	        }  
	        return list2;  
	    }  
	  
  
    /** 
     * 转成List<Map<String,T>>
     *  
     * @param gsonString 
     * @return 
     */  
    public static <T> List<Map<String, T>> GsonToListMaps(String gsonString) {  
        List<Map<String, T>> list = null;  
        if (gson != null) {  
            list = gson.fromJson(gsonString,  
                    new TypeToken<List<Map<String, T>>>() {  
                    }.getType());  
        }  
        return list;  
    }  
  
  
    /** 
     * 转成map的 
     *  
     * @param gsonString 
     * @return 
     */  
    public static <T> Map<String, T> GsonToMaps(String gsonString) {  
        Map<String, T> map = null;  
        if (gson != null) {  
            map = gson.fromJson(gsonString, new TypeToken<Map<String, T>>() {  
            }.getType());  
        }  
        return map;  
    }  
}
