accessing
qualified: aQualifiedName
	self changeWith: [
		qualified := aQualifiedName.
		self setFromQualified]