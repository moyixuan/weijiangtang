package com.creatorbluer.cbmv.domain;

public class Type {
	private Integer typeId;
	private String typeCode;
	private String typeName;
	private String typeDis;
	private String status;
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Integer getTypeId() {
		return typeId;
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	public String getTypeCode() {
		return typeCode;
	}
	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public String getTypeDis() {
		return typeDis;
	}
	public void setTypeDis(String typeDis) {
		this.typeDis = typeDis;
	}
	

}
