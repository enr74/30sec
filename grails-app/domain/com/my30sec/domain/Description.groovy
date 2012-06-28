package com.my30sec.domain

/*
 * Test comment
 */
class Description {
	String locale
	String text
	Video video
	Profile profile
    static constraints = {
    }
	static mapping = {
		text type: 'text'
		text(nullable:true)
		video(nullable:true)
		profile(nullable:true)
	}
}
