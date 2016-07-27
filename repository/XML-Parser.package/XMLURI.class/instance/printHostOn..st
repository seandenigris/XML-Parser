printing
printHostOn: aStream
	self hasHost
		ifTrue: [
			self hasScheme
				ifFalse: [aStream nextPutAll: '//'].
			aStream nextPutAll: host]