package 难.树.笔试;

import org.junit.Test;

public class 二叉树求节点差 {

	@Test
	public void check() {
		int			a[]		= { -1, 45, 6, 7, 12, 89, 2, 17 };
		Status		status	= new Status( -10000, 10000 );
		树节点			node	= new 树节点( a[0] );
		
		operate op      = new operate(status);
		
		for ( int i = 1; i < a.length; i++ )
		{
			op.insert( node, a[i] );
		}
		
		op.FindMax_Min( node );
		op.Max_Min_abs();
	}

}

class 树节点 {
	树节点	leftChild;
	树节点	rightChild;
	int	intege;

	public 树节点( int intege )
	{
		super();
		this.intege = intege;
	}
}

class  Status {
	int	max;
	int	min;
	public Status( int max, int min )
	{
		super();
		this.max	= max;
		this.min	= min;
	}
}

class operate{
	
	Status status;
	
	operate(Status status){
		this.status = status;
	}
	
/* 构造statusus */
	public void insert(树节点 root, int i )
	{
		if ( root == null )
		{
			System.out.println( "树为空" );
		} 
		else {
			if ( root.intege < i )
			{
				if ( root.leftChild != null )
				{
					insert( root.leftChild, i );
				} else {
					root.leftChild =  new 树节点( i ) ;
				}
			} else {
				if ( root.rightChild != null )
				{
					insert( root.rightChild, i );
				} else {
					root.rightChild = new 树节点( i ) ;
				}
			}
		}
	}


/* 插入，遍历找到树节点最大值和最小值 */
	public void FindMax_Min( 树节点 root )
	{
		if ( root == null )
		{
			System.out.println( "该树为空" );
		} else {
			if ( root.intege > status.max )
			{
				status.max = root.intege;
			}
			if ( root.intege < status.min )
			{
				status.min = root.intege;
			}
			if ( root.leftChild != null )
			{
				FindMax_Min( root.leftChild );
			}
			if ( root.rightChild != null )
			{
				FindMax_Min( root.rightChild );
			}
		}
	}

	public void Max_Min_abs()
	{
		System.out.println( status.max - status.min );
	}
}

