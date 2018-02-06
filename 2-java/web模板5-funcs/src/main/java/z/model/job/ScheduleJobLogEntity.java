package z.model.job;

import java.io.Serializable;
import java.util.Date;

public class ScheduleJobLogEntity implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2588314667714863435L;
	
	/**
	 * 日志id
	 */
	private String logId;
	
	/**
	 * 任务id
	 */
	private String jobId;
	
	/**
	 * spring bean名称
	 */
	private String beanName;

	/**
	 * 方法名
	 */
	private String methodName;
	
	private String params;
	
	/**
	 * 任务状态，0：成功，1：失败
	 */
	private Integer status;
	
	/**
	 * 失败信息
	 */
	private String error;
	
	/**
	 * 耗时时长（毫秒）
	 */
	private Long times;
	
	/**
	 * 创建时间
	 */
	private Date createTime;

	public String getLogId() {
		return logId;
	}

	public void setLogId(String logId) {
		this.logId = logId;
	}

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

	public String getMethodName() {
		return methodName;
	}

	public void setMethodName(String methodName) {
		this.methodName = methodName;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public Long getTimes() {
		return times;
	}

	public void setTimes(Long times) {
		this.times = times;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}
}
