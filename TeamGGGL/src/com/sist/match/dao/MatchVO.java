package com.sist.match.dao;

import java.util.*;

public class MatchVO {
	private int matchno;
	private Date matchdate;
	private String matchleague;
	private String matchname;
	private String homename;
	private int homescore;
	private String awayname;
	private int awayscore;
	private String videokey;
	public int getMatchno() {
		return matchno;
	}
	public void setMatchno(int matchno) {
		this.matchno = matchno;
	}
	public Date getMatchdate() {
		return matchdate;
	}
	public void setMatchdate(Date matchdate) {
		this.matchdate = matchdate;
	}
	public String getMatchleague() {
		return matchleague;
	}
	public void setMatchleague(String matchleague) {
		this.matchleague = matchleague;
	}
	public String getMatchname() {
		return matchname;
	}
	public void setMatchname(String matchname) {
		this.matchname = matchname;
	}
	public String getHomename() {
		return homename;
	}
	public void setHomename(String homename) {
		this.homename = homename;
	}
	public int getHomescore() {
		return homescore;
	}
	public void setHomescore(int homescore) {
		this.homescore = homescore;
	}
	public String getAwayname() {
		return awayname;
	}
	public void setAwayname(String awayname) {
		this.awayname = awayname;
	}
	public int getAwayscore() {
		return awayscore;
	}
	public void setAwayscore(int awayscore) {
		this.awayscore = awayscore;
	}
	public String getVideokey() {
		return videokey;
	}
	public void setVideokey(String videokey) {
		this.videokey = videokey;
	}
	
	

}
