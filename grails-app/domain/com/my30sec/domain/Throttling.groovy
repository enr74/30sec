package com.my30sec.domain

class Throttling {
	long maxConnections
	long gracePeriod
	long activeConnections
	
    static constraints = {
    }
}
