package 创建型模式.生成器;

public abstract class I_Builder {
    public abstract void buildComputer();
    public abstract void addItem();
    public abstract I_Computer getComputer();
}
