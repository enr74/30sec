package com.my30sec.domain

class Comment {
	
	
	User user
	Video video
	String text
    static constraints = {
    }
	
	static mapping = {
		text type: 'text'
		text(nullable:true)
	}
}
