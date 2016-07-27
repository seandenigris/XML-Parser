retrieving
get: aUrl timeout: aTimeout onError: aBlock
	^ ((Smalltalk at: #ZnClient) new
		timeout: self timeout;
		ifFail: aBlock;
		get: aUrl) contents