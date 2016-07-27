testing
mustStartBodySectionFor: anElementName
	^ ((self isBodySectionOnlyElement: anElementName)
		or: [(self hasOpenElement: 'head') not])
			and: [(self hasOpenElement: 'body') not]