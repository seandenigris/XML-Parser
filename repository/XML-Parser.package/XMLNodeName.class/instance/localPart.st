accessing
localPart
	^ localPart ifNil: [
		self setFromQualified.
		localPart]