package com.spring.blueye.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.core.style.ToStringCreator;

/**
 * Simple JavaBean domain object representing a User.
 * 
 * @author Dipika Disale
 */
@Entity
@Table(name = "JOB_MONITORING_VIEW")
public class ConcurrentJob extends BaseEntity {

	@Column(name = "PROGRAM_NAME")
    private String programName;
    
    
    @Column(name = "FREQUENCY")
    private String frequency;
    
    @Column(name = "SLA")
    private String sla;
    
    
    @Column(name = "ARGUMENTS")
    private String arguments;
    

    @Column(name = "SUCCESS_RECORDS")
    private String successRecords;
    

    @Column(name = "FAILED_RECORDS")
    private String failedRecords;
    
    @Column(name = "CONC_REQ_ID")
    private String conRedId;

	public String getProgramName() {
		return programName;
	}

	public void setProgramName(String programName) {
		this.programName = programName;
	}

	public String getFrequency() {
		return frequency;
	}

	public void setFrequency(String frequency) {
		this.frequency = frequency;
	}

	public String getSla() {
		return sla;
	}

	public void setSla(String sla) {
		this.sla = sla;
	}

	public String getArguments() {
		return arguments;
	}

	public void setArguments(String arguments) {
		this.arguments = arguments;
	}

	public String getSuccessRecords() {
		return successRecords;
	}

	public void setSuccessRecords(String successRecords) {
		this.successRecords = successRecords;
	}

	public String getFailedRecords() {
		return failedRecords;
	}

	public void setFailedRecords(String failedRecords) {
		this.failedRecords = failedRecords;
	}

	public String getConRedId() {
		return conRedId;
	}

	public void setConRedId(String conRedId) {
		this.conRedId = conRedId;
	}

	@Override
    public String toString() {
        return new ToStringCreator(this)
        		.append("id", this.getId())
        		.append("programName", this.getProgramName())
        		.append("frequency", this.getFrequency())
        		.append("sla", this.getSla())
        		.append("arguments", this.getArguments())
        		.append("successRecords", this.getSuccessRecords())
        		.append("failedRecords", this.getFailedRecords())
        		.append("conRedId", this.getConRedId())
                .toString();
    }
	
	
}
