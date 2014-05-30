package com.socialnet.entity;

import java.io.Serializable;
import javax.persistence.*;
https://github.com/DeyAbhishek/Web-Based-Projects/tree/master/Social-Networking-Site/com.socialnet.entity

/**
 * The persistent class for the post_like database table.
 * 
 */
@Entity
@Table(name="post_like")
public class PostLike implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="post_likeid")
	private String postLikeid;

	private String friendid;

	private String postid;

    public PostLike() {
    }

	public String getPostLikeid() {
		return this.postLikeid;
	}

	public void setPostLikeid(String postLikeid) {
		this.postLikeid = postLikeid;
	}

	public String getFriendid() {
		return this.friendid;
	}

	public void setFriendid(String friendid) {
		this.friendid = friendid;
	}

	public String getPostid() {
		return this.postid;
	}

	public void setPostid(String postid) {
		this.postid = postid;
	}

}
