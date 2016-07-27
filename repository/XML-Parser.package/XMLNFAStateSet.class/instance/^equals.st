comparing
= anObject
	^ anObject == self
		or: [anObject class == self class
			and: [anObject set = set]]