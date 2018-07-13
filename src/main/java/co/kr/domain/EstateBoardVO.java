package co.kr.domain;

import java.util.Date;

public class EstateBoardVO {
	private int bno;
	private String title;
	private String area;
	private String addr;
	private String dealType;
	private String floor;
	private double supplyArea;
	private double exclusiveArea;
	private int elevator;
	private int parking;
	private int makingYear;
	private int makingMonth;
	private String airconditioner;
	private String mName;
	private String mcall1;
	private String mcall2;
	private String memail;
	private String recommend;
	private String moreInfo;
	private String content;
	private String mainImg;
	private Date regdate;
	private int cnt;

	public EstateBoardVO() {
		super();
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getDealType() {
		return dealType;
	}

	public void setDealType(String dealType) {
		this.dealType = dealType;
	}

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public double getSupplyArea() {
		return supplyArea;
	}

	public void setSupplyArea(double supplyArea) {
		this.supplyArea = supplyArea;
	}

	public double getExclusiveArea() {
		return exclusiveArea;
	}

	public void setExclusiveArea(double exclusiveArea) {
		this.exclusiveArea = exclusiveArea;
	} 

	public int getElevator() {
		return elevator;
	}

	public void setElevator(int elevator) {
		this.elevator = elevator;
	}

	public int getParking() {
		return parking;
	}

	public void setParking(int parking) {
		this.parking = parking;
	}

	public int getMakingYear() {
		return makingYear;
	}

	public void setMakingYear(int makingYear) {
		this.makingYear = makingYear;
	}

	public int getMakingMonth() {
		return makingMonth;
	}

	public void setMakingMonth(int makingMonth) {
		this.makingMonth = makingMonth;
	}


	public String getAirconditioner() {
		return airconditioner;
	}

	public void setAirconditioner(String airconditioner) {
		this.airconditioner = airconditioner;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getMcall1() {
		return mcall1;
	}

	public void setMcall1(String mcall1) {
		this.mcall1 = mcall1;
	}

	public String getMcall2() {
		return mcall2;
	}

	public void setMcall2(String mcall2) {
		this.mcall2 = mcall2;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getRecommend() {
		return recommend;
	}

	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}

	public String getMoreInfo() {
		return moreInfo;
	}

	public void setMoreInfo(String moreInfo) {
		this.moreInfo = moreInfo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "EstateBoardVO [bno=" + bno + ", title=" + title + ", area=" + area + ", addr=" + addr + ", dealType="
				+ dealType + ", floor=" + floor + ", supplyArea=" + supplyArea + ", exclusiveArea=" + exclusiveArea
				+ ", elevator=" + elevator + ", parking=" + parking + ", makingYear=" + makingYear + ", makingMonth="
				+ makingMonth + ", airconditioner=" + airconditioner + ", mName=" + mName + ", mcall1=" + mcall1
				+ ", mcall2=" + mcall2 + ", recommend=" + recommend + ", moreInfo=" + moreInfo + ", content=" + content
				+ ", mainImg=" + mainImg + ", regdate=" + regdate + ", cnt=" + cnt + "]";
	}

	
		
}
