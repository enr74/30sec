package com.my30sec.domain

class User {
	String username
	String password
	Profile profile
	static hasMany = [videos: Video, comments: Comment]
	static mappedBy = [videos: "user", comments: "user"]
    static constraints = {
    }
}
