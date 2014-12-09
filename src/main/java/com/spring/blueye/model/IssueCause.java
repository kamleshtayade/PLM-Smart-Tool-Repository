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
@Table(name = "plm_cause_details")
public class IssueCause extends BaseEntity {

	@Column(name = "ISSUE_ID")
	private int issueId;
	
	@Column(name = "PROBLEM")
	private String problem;
	
	@Column(name = "SOLUTION")
	private String solution;
	
	
	public int getIssueId() {
		return issueId;
	}


	public void setIssueId(int issueId) {
		this.issueId = issueId;
	}
	
	public String getProblem() {
		return problem;
	}


	public void setProblem(String problem) {
		this.problem = problem;
	}
	

	public String getSolution() {
		return solution;
	}


	public void setSolution(String solution) {
		this.solution = solution;
	}


	@Override
	public String toString() {
		return new ToStringCreator(this).append("id", this.getId())
				.append("issueId", this.getIssueId())
				.append("problem", this.getProblem())
				.append("solution", this.getSolution())
				.toString();
	}
}
