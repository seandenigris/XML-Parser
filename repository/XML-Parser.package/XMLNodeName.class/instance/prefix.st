accessing
prefix
	^ prefix ifNil: [
		self setFromQualified.
		prefix]