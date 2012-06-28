package com.my30sec.domain

class Video {

	String externalId
	String title
	static hasMany = [ratings: Rating, tags: Tag, comments: Comment, descriptions: Description]
	static mappedBy = [comments: "video", descriptions: "video"]
	User user
    static constraints = {
    }
}
