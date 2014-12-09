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
@Table(name = "ISSUE_DETAILS_VIEW")
public class IssueDetails extends BaseEntity {
   
	@Column(name = "plm_id")
    private int plmId;

	public int getPlmId() {
		return plmId;
	}

	public void setPlmId(int plmId) {
		this.plmId = plmId;
	}

	@Column(name = "ERROR_TYPE")
    private String errorType;
    
    
    @Column(name = "ORG_CODE")
    private String orgCode;
    
    @Column(name = "ECO")
    private String eco;
    
    
    @Column(name = "ITEM_NO")
    private String itemNo;
    

    @Column(name = "ISSUE_STATUS")
    private String itemStatus;
    

    @Column(name = "LAST_UPDATED_DATE")
    private String lastUpdateDate;
    
    public String getErrorType() {
		return errorType;
	}

	public void setErrorType(String errorType) {
		this.errorType = errorType;
	}
	
	public String getItemNo() {
		return itemNo;
	}


	public String getOrgCode() {
		return orgCode;
	}

	public void setOrgCode(String orgCode) {
		this.orgCode = orgCode;
	}

	public void setItemNo(String itemNo) {
		this.itemNo = itemNo;
	}

	public String getEco() {
		return eco;
	}

	public void setEco(String eco) {
		this.eco = eco;
	}

	

	public String getItemStatus() {
		return itemStatus;
	}

	public void setItemStatus(String itemStatus) {
		this.itemStatus = itemStatus;
	}

	public String getLastUpdateDate() {
		return lastUpdateDate;
	}

	public void setLastUpdateDate(String lastUpdateDate) {
		this.lastUpdateDate = lastUpdateDate;
	}

	@Override
    public String toString() {
        return new ToStringCreator(this)
        		.append("id", this.getId())
        		.append("errorType", this.getErrorType())
        		.append("orgCode", this.getOrgCode())
        		.append("eco", this.getEco())
        		.append("itemNo", this.getItemNo())
        		.append("itemStatus", this.getItemStatus())
        		.append("lastUpdateDate", this.getLastUpdateDate())
                .toString();
    }
	
	
}
