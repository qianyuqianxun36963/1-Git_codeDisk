package java语言.f_文档.xml格式.client;

public class FabricDevLcm {
    private String id;

    private String testbedId;

    private String type;

    private String devClass;

    private String name;

    private String ipaddr;

    private String version;

    private String username;

    private String password;

    private String location;

    private String description;

    private String console;

    private String remark;

    private Byte shared;

    private Byte crossconnector;

    private Byte engrossstate;

    private String portType;

    private String portNum;

    private String parentId;

    private String parentPortType;

    private String parentPortNum;

    public FabricDevLcm(String id, String testbedId, String type, String devClass, String name, String ipaddr, String version, String username, String password, String location, String description, String console, String remark, Byte shared, Byte crossconnector, Byte engrossstate, String portType, String portNum, String parentId, String parentPortType, String parentPortNum) {
        this.id = id;
        this.testbedId = testbedId;
        this.type = type;
        this.devClass = devClass;
        this.name = name;
        this.ipaddr = ipaddr;
        this.version = version;
        this.username = username;
        this.password = password;
        this.location = location;
        this.description = description;
        this.console = console;
        this.remark = remark;
        this.shared = shared;
        this.crossconnector = crossconnector;
        this.engrossstate = engrossstate;
        this.portType = portType;
        this.portNum = portNum;
        this.parentId = parentId;
        this.parentPortType = parentPortType;
        this.parentPortNum = parentPortNum;
    }

    public FabricDevLcm() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getTestbedId() {
        return testbedId;
    }

    public void setTestbedId(String testbedId) {
        this.testbedId = testbedId == null ? null : testbedId.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getDevClass() {
        return devClass;
    }

    public void setDevClass(String devClass) {
        this.devClass = devClass == null ? null : devClass.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getIpaddr() {
        return ipaddr;
    }

    public void setIpaddr(String ipaddr) {
        this.ipaddr = ipaddr == null ? null : ipaddr.trim();
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version == null ? null : version.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location == null ? null : location.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getConsole() {
        return console;
    }

    public void setConsole(String console) {
        this.console = console == null ? null : console.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Byte getShared() {
        return shared;
    }

    public void setShared(Byte shared) {
        this.shared = shared;
    }

    public Byte getCrossconnector() {
        return crossconnector;
    }

    public void setCrossconnector(Byte crossconnector) {
        this.crossconnector = crossconnector;
    }

    public Byte getEngrossstate() {
        return engrossstate;
    }

    public void setEngrossstate(Byte engrossstate) {
        this.engrossstate = engrossstate;
    }

    public String getPortType() {
        return portType;
    }

    public void setPortType(String portType) {
        this.portType = portType == null ? null : portType.trim();
    }

    public String getPortNum() {
        return portNum;
    }

    public void setPortNum(String portNum) {
        this.portNum = portNum == null ? null : portNum.trim();
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId == null ? null : parentId.trim();
    }

    public String getParentPortType() {
        return parentPortType;
    }

    public void setParentPortType(String parentPortType) {
        this.parentPortType = parentPortType == null ? null : parentPortType.trim();
    }

    public String getParentPortNum() {
        return parentPortNum;
    }

    public void setParentPortNum(String parentPortNum) {
        this.parentPortNum = parentPortNum == null ? null : parentPortNum.trim();
    }
}