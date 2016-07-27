printing
printOn: aStream
	self identityHash printOn: aStream.
	aStream nextPutAll: ': '.
	self transitionsDo: [:each | each printOn: aStream].
	aStream cr.