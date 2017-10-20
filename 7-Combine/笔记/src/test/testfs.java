package test;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import net.sf.json.JSONArray;

public class testfs{
		static String operation = "get_node";
		static String text = "dir";
		static String type = "";
		static String id = "";
		
    	public static void main(String args[]) throws Exception{
    		String basePath = "C:\\a_practice\\2-java\\.metadata\\.me_tcat\\webapps\\NoteBook\\";
    	    Fs fs = new Fs(basePath+"\\"+"files");
//    		Fs fs= new Fs("C:");
    		if(operation!=null){
    			try {
    				ArrayList<Map<Object, Object>> rslt = null;
    				String node = "";
    				if(operation.equals("get_node")){
    					node = (id!=null && id!= "#") ? id : "/";
    					rslt = (new Fs()).lst(node, (id!=null && id!= "#"));
    				}else if(operation.equals("create_node")){
    					node = (id!=null && id!= "#") ? id : "/";
    					rslt = (new Fs()).create(node, text!=null ? text : "", type!=null || type != "file");
    				}
    				System.out.println(rslt);
    				JSONArray json = JSONArray.fromObject(rslt);
    				System.out.println(json.toString());

    	 			
    	 			ArrayList<Map<Object, Object>> res = new ArrayList<Map<Object, Object>>();
    	 			Map<Object, Object> resmap = new HashMap<Object, Object>();
    	 			resmap.put("text","New node 3");resmap.put("children",true);
    	 			resmap.put("id","Escritos Recibidos//Applicant02//New node 3");
    	 			resmap.put("icon","folder");
    	 			res.add(resmap);
    	 			JSONArray result = JSONArray.fromObject(res);
    	 			System.out.println(result.toString());
//    	 			header('Content-Type: application/json; charset=utf-8');
//    	 			echo json_encode($rslt);
    			}
    			catch (Exception e) {
//    	 			header($_SERVER["SERVER_PROTOCOL"] . ' 500 Server Error');
//    	 			header('Status:  500 Server Error');
//    	 			echo $e->getMessage();
    			}
    		}	
    	}
    	
    }

	class Fs{
		String operation = "";
		String text = "";
		String type = "";
		
		
		protected String base = "C:";

		Fs(){}
		Fs(String basepath) throws Exception{
			this.base=this.real(basepath);
			if(this.base==null||this.base.isEmpty()){throw new Exception("Base directory does not exist");}
		}

		protected String real(String path) throws Exception {
			String temp = path;
			if(temp.isEmpty()) { throw new Exception("path does't exist"); }
			if(this.base!=null && this.base.length()>0) {
				if(temp.indexOf(this.base)!= 0) { throw new Exception("Path is not inside basepath "); }
			}
			return temp;
		}
		
		protected String path(String id) throws Exception {
			id = id.replaceAll("\\\\","/");
  			id = this.mytrim(id, "/");
			id = this.real(this.base + "/" + id);
			return id;
		}

		//将除去根地址得到的剩下的部分。
		protected String id(String path) throws Exception {
			path = this.real(path);
			path = path.substring(this.base.length());
			path = path.replaceAll("\\\\","/");
			path = mytrim(path, "/");
			return (path.length()>0) ? path : "/";
		}
	    
	    public String mytrim(String str,String tag){
			str = str.trim();
			while(str.startsWith(tag)) str = str.substring(1);
			while(str.endsWith(tag)) str = str.substring(0,str.length()-1);
			return str;
		}
		
	    
	    
		@SuppressWarnings("null")
		public ArrayList<Map<Object, Object>> lst(String id, boolean with_root) throws Exception {
			String dir = this.path(id);
			File dirs = new File(dir);
			File[] filesFile=dirs.listFiles();
			ArrayList<String> lst = new ArrayList<String>();
			for (File f : filesFile){lst.add(f.toString());}

			if(lst.size()==0) { throw new Exception("Could not list path:" + dir); }
			ArrayList<Map<Object, Object>> res = new ArrayList<Map<Object, Object>>();

			for(String item : lst){
				if(item.equals(".") || item.equals("..") || item == null) { continue; }
				Pattern p = Pattern.compile("([^ a-zа-я-_0-9.]+)ui");
				Matcher m = p.matcher(item);
				if(m.find()){ continue; }
				String filepath=dir+"/"+item;
				if(new File(filepath).isDirectory()){Map<Object, Object> resmap = new HashMap<Object, Object>();resmap.put("text",item);resmap.put("children",true);resmap.put("id",this.id(filepath));resmap.put("icon","folder"); res.add(resmap);}
				else{Map<Object, Object> resmap = new HashMap<Object, Object>();
					resmap.put("text",item);resmap.put("children",false);resmap.put("id",this.id(filepath));resmap.put("type","file");resmap.put("icon","file file-"+"mp4"); res.add(resmap);
				}
			}
			return res;
		}
		
		public ArrayList<Map<Object, Object>> create(String id, String name, boolean mkdir) throws Exception{
			String dir = this.path(id);
			if(mkdir!=true) mkdir = false;
			Pattern p = Pattern.compile("([^ a-zа-я-_0-9.]+)ui");
			Matcher m = p.matcher(name);
				if(m.find()||name.length()==0)
				{
					throw new Exception("Invalid name: " + name);
				}
			ArrayList<Map<Object, Object>> res = new ArrayList<Map<Object, Object>>();
			Map<Object, Object> resmap = new HashMap<Object, Object>();resmap.put("id",this.id(dir+"/"+name));
			res.add(resmap);
			return res;
		}
	}