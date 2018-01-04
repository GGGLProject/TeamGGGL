package com.sist.match.dao;

import java.util.*;

public class MatchVO {
	private int match_no;
	private String match_day;
	private String match_time;
	private String match_league;
	private String match_name;
	private String home_name;
	private int home_score;
	private String away_name;
	private int away_score;
	private String match_videokey;
	private PlayerVO pvo = new PlayerVO();
	private TeamVO tvo = new TeamVO();
	private String away_icon;
	private String a_player_name;
	private String a_player_pic;
	private int count;
	
	
	public String getA_player_name() {
		return a_player_name;
	}
	public void setA_player_name(String a_player_name) {
		this.a_player_name = a_player_name;
	}
	public String getA_player_pic() {
		return a_player_pic;
	}
	public void setA_player_pic(String a_player_pic) {
		this.a_player_pic = a_player_pic;
	}
	public String getAway_icon() {
		return away_icon;
	}
	public void setAway_icon(String away_icon) {
		this.away_icon = away_icon;
	}
	public PlayerVO getPvo() {
		return pvo;
	}
	public void setPvo(PlayerVO pvo) {
		this.pvo = pvo;
	}
	public TeamVO getTvo() {
		return tvo;
	}
	public void setTvo(TeamVO tvo) {
		this.tvo = tvo;
	}
	public int getMatch_no() {
		return match_no;
	}
	public void setMatch_no(int match_no) {
		this.match_no = match_no;
	}
	
	public String getMatch_day() {
		return match_day;
	}
	public void setMatch_day(String match_day) {
		this.match_day = match_day;
	}
	public String getMatch_time() {
		return match_time;
	}
	public void setMatch_time(String match_time) {
		this.match_time = match_time;
	}
	public String getMatch_league() {
		return match_league;
	}
	public void setMatch_league(String match_league) {
		this.match_league = match_league;
	}
	public String getMatch_name() {
		return match_name;
	}
	public void setMatch_name(String match_name) {
		this.match_name = match_name;
	}
	public String getHome_name() {
		return home_name;
	}
	public void setHome_name(String home_name) {
		this.home_name = home_name;
	}
	public int getHome_score() {
		return home_score;
	}
	public void setHome_score(int home_score) {
		this.home_score = home_score;
	}
	public String getAway_name() {
		return away_name;
	}
	public void setAway_name(String away_name) {
		this.away_name = away_name;
	}
	public int getAway_score() {
		return away_score;
	}
	public void setAway_score(int away_score) {
		this.away_score = away_score;
	}
	public String getMatch_videokey() {
		return match_videokey;
	}
	public void setMatch_videokey(String match_videokey) {
		this.match_videokey = match_videokey;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}

}
