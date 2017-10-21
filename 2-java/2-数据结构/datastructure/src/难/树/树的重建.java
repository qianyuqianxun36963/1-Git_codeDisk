package ��.��;


public class �����ؽ� {
	
	public static void main(String[] args) {
		int[] pre = {1,2,4,7,3,5,6,8};
		int[] in = {4,7,2,1,5,3,8,6};
		ReBuiltTree result = new �����ؽ�().reConstructBinaryTree(pre,in);
		
		System.out.print("���������Ϊ:");
		ReBuiltTree.postOrder(result);
	}
	
	
	//����д�ģ������ˡ�
	public ReBuiltTree reConstructBinaryTree(int [] pre,int [] in) {
		ReBuiltTree root=reConstructBinaryTree(pre,0,pre.length-1,in,0,in.length-1);
        return root;
    }
    //ǰ�����{1,2,4,7,3,5,6,8}�������������{4,7,2,1,5,3,8,6}
    private ReBuiltTree reConstructBinaryTree(int [] pre,int startPre,int endPre,int [] in,int startIn,int endIn) {
         
        if(startPre>endPre||startIn>endIn)
            return null;
        ReBuiltTree root=new ReBuiltTree(pre[startPre]);
         
        for(int i=startIn;i<=endIn;i++)
            if(in[i]==pre[startPre]){
                root.left=reConstructBinaryTree(pre,startPre+1,startPre+i-startIn,in,startIn,i-1);
                root.right=reConstructBinaryTree(pre,i-startIn+startPre+1,endPre,in,i+1,endIn);
            }
                 
        return root;
    }
	
	
	
	//�Լ�ֱ�����ģ������鷳�����Խ�root���Ƕ�д�ڵ������д�
	public ReBuiltTree reConstructBinaryTree1(int [] pre,int [] in) {
        ReBuiltTree root = new ReBuiltTree(pre[0]);
        int p = getpoint(pre[0],in);
        if(p>0) 
        	root.left = reConstructBinaryChildTree(pre,in,1,p,0,p-1);
        if(p<pre.length-1)
        	root.right = reConstructBinaryChildTree(pre,in,p+1,pre.length-1,p+1,pre.length-1);
        return root;
    }
	
	public ReBuiltTree reConstructBinaryChildTree(int[] pre,int [] in,int preleft,int preright,int inleft,int inright) {
		ReBuiltTree node = new ReBuiltTree(pre[preleft]);
        
        int p = getpoint(pre[preleft],in);
        
        if(p>inleft)
        	node.left = reConstructBinaryChildTree(pre,in,preleft+1,preleft+(p-inleft),inleft,p-1);
        if(p<inright)
        	node.right = reConstructBinaryChildTree(pre,in,preright-(inright-p)+1,preright,p+1,inright);
        
        return node;
    }
	
	public int getpoint(int x,int[] in){
		int i = 0;
		for(;i<in.length;i++)
		if (in[i]==x) return i;
		return i;
	}
}


//ͨ�õģ������洢���ṹ��
class ReBuiltTree {
     int val;
     ReBuiltTree left;
     ReBuiltTree right;
     ReBuiltTree(int x) { val = x; }
     
   //������ʵ�ĺ����������
   public static void postOrder(ReBuiltTree tree){
	   if(tree!=null){
	   postOrder(tree.left);
	   postOrder(tree.right);
	   System.out.print(tree.val+" ");
	   }
   };
}


