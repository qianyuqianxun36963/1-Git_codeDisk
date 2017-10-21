package alibaba;

//问题描述
//阿里巴巴的DOPS大数据处理平台可以启动一系列并发的作业，每个作业中存在一系列父子关系的任务，每个任务用一个三元组表示--（任务id，父任务id，执行开销），其中任务id是一个正整数（>0）;
//父任务id为0表示根任务，每个作业存在一个唯一的根任务，并且，所有的任务，如果其父任务id不是0；那么必然是一个已经存在的根任务id；执行开销是一个整数(>0)。系统中至少存在一个任务。
//举例如下：(1,0,2)(2,0,3)(3,1,2)(4,1,3)
//对应任务：1(2)       2(3)
//	         |
//	     3(2)  4(3)
//括号里是任务开销。
//从根节点到叶子节点的开销成为叶子的总开销，求出一个森林中叶子开销的最大值。

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class 最大任务时间 {
	 public static void main(String[] args) {

	        ArrayList<Integer> _ids = new ArrayList<Integer>();
	        ArrayList<Integer> _parents = new ArrayList<Integer>();
	        ArrayList<Integer> _costs = new ArrayList<Integer>();

	        Scanner in = new Scanner(System.in);
	        String line = in.nextLine();

	        while(line != null && !line.isEmpty()) {
	            if(line.trim().equals("0")) break;
	            String []values = line.trim().split(" ");
	            if(values.length != 3) {
	                break;
	            }
	            _ids.add(Integer.parseInt(values[0]));
	            _parents.add(Integer.parseInt(values[1]));
	            _costs.add(Integer.parseInt(values[2]));
	            line = in.nextLine();
	        }
	        int res = resolve(_ids, _parents, _costs);

	        System.out.println(String.valueOf(res));
	    }

	         // write your code here
	    public static int resolve(ArrayList<Integer> ids, ArrayList<Integer> parents, ArrayList<Integer> costs) {
	        //构建森林
	    	ArrayList<ThreadTree> threadTrees = new ArrayList<ThreadTree>();
	    	for(int i = 0;i<ids.size();i++){
	    		if(0==parents.get(i)){TreeNode treeNode = new TreeNode(ids.get(i),costs.get(i));ThreadTree threadTree = new ThreadTree(treeNode);threadTrees.add(threadTree);}
	    		else{
	    			for(ThreadTree threadTree:threadTrees){
	    				if(parents.get(i)==threadTree.treeHead.nodeid){
	    					TreeNode treeNode = new TreeNode(ids.get(i),costs.get(i));
	    					threadTree.treeHead.treenodes.add(treeNode);};
	    			}
	    		}
	    	}
	    	
	    	return getTreesMaxnum(threadTrees);
	    	
	    }
	    
	    public static int getTreesMaxnum(ArrayList<ThreadTree> threadTrees){
	    	int max = 0;
	    	for(ThreadTree threadTree:threadTrees){
	    		if(max<getTreeMaxNum(threadTree)) max = getTreeMaxNum(threadTree);
	    	}
	    	return max;
	    }
	    
	    public static int getTreeMaxNum(ThreadTree threadTree){
	    	int max = 0;
	    	if(threadTree.treeHead.treenodes.size()!=0){
		    	for(TreeNode threadNode:threadTree.treeHead.treenodes){
		    		if(max<threadNode.nodecost) max = threadNode.nodecost;
		    	}
	    	}
	    	return max + threadTree.treeHead.nodecost;
	    }
	    	
}

class TreeNode{
	int nodeid;
	int nodecost;
	ArrayList<TreeNode> treenodes = new ArrayList<TreeNode>();
	TreeNode(int id,int cost){
		this.nodeid = id;
		this.nodecost = cost;
	}
}

class ThreadTree{
	TreeNode treeHead;
	ThreadTree(TreeNode treeHead){
		this.treeHead = treeHead;
	}
}
