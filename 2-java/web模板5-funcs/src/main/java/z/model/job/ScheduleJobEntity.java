package z.model.job;

import java.io.Serializable;
import java.util.Date;

import org.hibernate.validator.constraints.NotBlank;

public class ScheduleJobEntity implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -579222341638101205L;
  
	public static final String JOB_PARAM_KEY = "JOB_PARAM_KEY";
	/**
	 * 任务id
	 */
	private String jobId;
	
	/**
	 * 方法名
	 */
	@NotBlank(message="bean名称不能为空")
	private String beanName;
	
	/**
	 * 方法名
	 */
	@NotBlank(message="方法名称不能为空")
	private String methodName;
	
	/**
	 * 参数
	 */
	private String params;
	

	/**
	 * corn表达式
	 */
	@NotBlank(message="corn表达式不能为空")
	private String cronExpression;
	
	/**
	 * 任务状态
	 */
	private Integer status;
	
	/**
	 * 备注
	 */
	private String remark;
	
	/**
	 * 创建时间
	 */
	private Date createTime;

	public String getJobId() {
		return jobId;
	}

	public void setJobId(String jobId) {
		this.jobId = jobId;
	}

	public String getBeanName() {
		return beanName;
	}

	public void setBeanName(String beanName) {
		this.beanName = beanName;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public String getCronExpression() {
		return cronExpression;
	}

	public void setCronExpression(String cronExpression) {
		this.cronExpression = cronExpression;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	public String getMethodName() {
		return methodName;
	}

	public void setMethodName(String methodName) {
		this.methodName = methodName;
	}
}
