printing
printUserInfoOn: aStream
	self hasUserInfo
		ifTrue: [
			self
				print: self userInfo
				withPercentEncodingOn: aStream.
			aStream nextPut: $@]