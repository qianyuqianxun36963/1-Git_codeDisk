package alibaba;

//��������
//����Ͱ͵�DOPS�����ݴ���ƽ̨��������һϵ�в�������ҵ��ÿ����ҵ�д���һϵ�и��ӹ�ϵ������ÿ��������һ����Ԫ���ʾ--������id��������id��ִ�п���������������id��һ����������>0��;
//������idΪ0��ʾ������ÿ����ҵ����һ��Ψһ�ĸ����񣬲��ң����е���������丸����id����0����ô��Ȼ��һ���Ѿ����ڵĸ�����id��ִ�п�����һ������(>0)��ϵͳ�����ٴ���һ������
//�������£�(1,0,2)(2,0,3)(3,1,2)(4,1,3)
//��Ӧ����1(2)       2(3)
//	         |
//	     3(2)  4(3)
//����������������
//�Ӹ��ڵ㵽Ҷ�ӽڵ�Ŀ�����ΪҶ�ӵ��ܿ��������һ��ɭ����Ҷ�ӿ��������ֵ��

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class �������ʱ�� {
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
	        //����ɭ��
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
