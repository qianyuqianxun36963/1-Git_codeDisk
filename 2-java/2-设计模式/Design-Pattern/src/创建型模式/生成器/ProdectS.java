package 创建型模式.生成器;

import java.util.ArrayList;

class I_Computer extends ArrayList<I_ComputerItem>{private static final long serialVersionUID = 1L;}
class Impl_ThinkpadP50 extends I_Computer {private static final long serialVersionUID = 1L;}
class Impl_ThinkpadW541 extends I_Computer {private static final long serialVersionUID = 1L;}

class I_ComputerItem{
	private String s;
	public I_ComputerItem(String s){this.s=s;}
	public String toString(){return s;};
}

class Impl_CPU extends I_ComputerItem{
	Impl_CPU(String s){super(s);}
}

class Impl_Memory extends I_ComputerItem{
	Impl_Memory(String s){super(s);}
}