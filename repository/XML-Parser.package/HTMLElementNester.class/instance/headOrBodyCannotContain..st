testing
headOrBodyCannotContain: anElementName
	^ ((self hasOpenElement: 'head')
		and: [self isBodySectionOnlyElement: anElementName])
			or: [(self hasOpenElement: 'body')
				and: [self isHeadSectionOnlyElement: anElementName]]