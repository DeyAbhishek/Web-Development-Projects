package com.socialnet.entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the scrap database table.
 * 
 */
@Entity
@Table(name="scrap")
public class Scrap implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String scrapid;

	private String emailid;

	private String friendid;

    public Scrap() {
    }

	public String getScrapid() {
		return this.scrapid;
	}

	public void setScrapid(String scrapid) {
		this.scrapid = scrapid;
	}

	public String getEmailid() {
		return this.emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getFriendid() {
		return this.friendid;
	}

	public void setFriendid(String friendid) {
		this.friendid = friendid;
	}

}
