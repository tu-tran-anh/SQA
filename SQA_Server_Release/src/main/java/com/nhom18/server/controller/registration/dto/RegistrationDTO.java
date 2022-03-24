package com.nhom18.server.controller.registration.dto;

import java.sql.Timestamp;

public class RegistrationDTO {
	private long id;
	private long totalItem;
	private Timestamp regTime;
	private boolean isEnable;
	private long subjectGroupId;
	private String subjectGroupCode;
	private String subjectName;
	private String room;
	private String shift;
	private String learningDay;
	private String learningWeek;
	private long teacherId;
	
	public RegistrationDTO() {
		super();
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public String getShift() {
		return shift;
	}

	public void setShift(String shift) {
		this.shift = shift;
	}

	public String getLearningDay() {
		return learningDay;
	}

	public void setLearningDay(String learningDay) {
		this.learningDay = learningDay;
	}

	public Timestamp getRegTime() {
		return regTime;
	}

	public void setRegTime(Timestamp regTime) {
		this.regTime = regTime;
	}

	public boolean isEnable() {
		return isEnable;
	}

	public void setEnable(boolean enable) {
		isEnable = enable;
	}

	public long getSubjectGroupId() {
		return subjectGroupId;
	}

	public void setSubjectGroupId(long subjectGroupId) {
		this.subjectGroupId = subjectGroupId;
	}

	public String getSubjectGroupCode() {
		return subjectGroupCode;
	}

	public void setSubjectGroupCode(String subjectGroupCode) {
		this.subjectGroupCode = subjectGroupCode;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getLearningWeek() {
		return learningWeek;
	}

	public void setLearningWeek(String learningWeek) {
		this.learningWeek = learningWeek;
	}

	public long getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(long teacherId) {
		this.teacherId = teacherId;
	}

	public long getTotalItem() {
		return totalItem;
	}

	public void setTotalItem(long totalItem) {
		this.totalItem = totalItem;
	}

	@Override
	public String toString() {
		return "RegistrationDTO{" +
				"id=" + id +
				", totalItem=" + totalItem +
				", regTime=" + regTime +
				", isEnable=" + isEnable +
				", subjectGroupId=" + subjectGroupId +
				", subjectGroupCode='" + subjectGroupCode + '\'' +
				", subjectName='" + subjectName + '\'' +
				", room='" + room + '\'' +
				", shift='" + shift + '\'' +
				", learningDay='" + learningDay + '\'' +
				", learningWeek='" + learningWeek + '\'' +
				", teacherId=" + teacherId +
				'}';
	}
}