package 创建型模式.生成器;

class Impl_ThinkpadP50Builder extends I_Builder{
    Impl_ThinkpadP50 thinkpadP50;
    Impl_Memory memory;
    Impl_CPU cpu;
    public void buildComputer() {
        System.out.println("thinkPadP50");
        thinkpadP50 = new Impl_ThinkpadP50();
    }
    public void addItem() {
        memory = new Impl_Memory("16G内存");
        cpu = new Impl_CPU("AMD CPU");
        thinkpadP50.add(memory);
        thinkpadP50.add(cpu);
    }
    public I_Computer getComputer() {
        return thinkpadP50;
    }}


class Impl_ThinkpadW541Builder extends I_Builder{
    Impl_ThinkpadW541 thinkpadW541;
    Impl_Memory memory;
    Impl_CPU cpu;
    public void buildComputer() {
        System.out.println("thinkPadW541");
        thinkpadW541 = new Impl_ThinkpadW541();
    }
    public void addItem() {
        memory = new Impl_Memory("8G内存");
        cpu = new Impl_CPU("英特尔CPU");
        thinkpadW541.add(memory);
        thinkpadW541.add(cpu);
    }
    public I_Computer getComputer() {
        return thinkpadW541;
    }}
