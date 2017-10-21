package 难.树;


public class 树的重建 {
	
	public static void main(String[] args) {
		int[] pre = {1,2,4,7,3,5,6,8};
		int[] in = {4,7,2,1,5,3,8,6};
		ReBuiltTree result = new 树的重建().reConstructBinaryTree(pre,in);
		
		System.out.print("树后序遍历为:");
		ReBuiltTree.postOrder(result);
	}
	
	
	//别人写的，简单明了。
	public ReBuiltTree reConstructBinaryTree(int [] pre,int [] in) {
		ReBuiltTree root=reConstructBinaryTree(pre,0,pre.length-1,in,0,in.length-1);
        return root;
    }
    //前序遍历{1,2,4,7,3,5,6,8}和中序遍历序列{4,7,2,1,5,3,8,6}
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
	
	
	
	//自己直接做的，略显麻烦。可以将root的那段写在迭代里，不写里。
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


//通用的，用来存储树结构。
class ReBuiltTree {
     int val;
     ReBuiltTree left;
     ReBuiltTree right;
     ReBuiltTree(int x) { val = x; }
     
   //用于现实的后序遍历树。
   public static void postOrder(ReBuiltTree tree){
	   if(tree!=null){
	   postOrder(tree.left);
	   postOrder(tree.right);
	   System.out.print(tree.val+" ");
	   }
   };
}


