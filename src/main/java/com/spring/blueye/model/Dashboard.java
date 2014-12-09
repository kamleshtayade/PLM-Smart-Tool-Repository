/*
 * Copyright 2002-2013 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
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
@Table(name = "plm_smart_summary_view")
public class Dashboard extends BaseEntity {
	@Column(name = "notified_records")
	private Integer notifiedRecords;

	@Column(name = "processed_records")
	private Integer processedRecords;

	@Column(name = "failed_records")
	private Integer failedRecords;

	@Column(name = "creation_date")
	private String creationDate;

	@Column(name = "PROGRAM_TYPE")
	private String programType;

	@Column(name = "fixed_count")
	private String fixedCount;

	public Integer getNotifiedRecords() {
		return notifiedRecords;
	}

	public void setNotifiedRecords(Integer notifiedRecords) {
		this.notifiedRecords = notifiedRecords;
	}

	public Integer getProcessedRecords() {
		return processedRecords;
	}

	public void setProcessedRecords(Integer processedRecords) {
		this.processedRecords = processedRecords;
	}

	public Integer getFailedRecords() {
		return failedRecords;
	}

	public void setFailedRecords(Integer failedRecords) {
		this.failedRecords = failedRecords;
	}

	public String getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(String creationDate) {
		this.creationDate = creationDate;
	}

	public String getProgramType() {
		return programType;
	}

	public void setProgramType(String programType) {
		this.programType = programType;
	}

	public String getFixedCount() {
		return fixedCount;
	}

	public void setFixedCount(String fixedCount) {
		this.fixedCount = fixedCount;
	}


	@Override
	public String toString() {
		return new ToStringCreator(this).append("id", this.getId())
				.append("programType", this.getProgramType())
				.append("notifiedRecords", this.getNotifiedRecords())
				.append("processedRecords", this.getProcessedRecords())
				.append("failedRecords", this.getFailedRecords())
				.append("fixedCount", this.getFixedCount())
				.append("creationDate", this.getCreationDate()).toString();
	}

}
