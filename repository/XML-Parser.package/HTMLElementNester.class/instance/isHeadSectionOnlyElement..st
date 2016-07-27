testing
isHeadSectionOnlyElement: anElementName
	^ (HeadSectionElements includes: anElementName)
		and: [(BodySectionElements includes: anElementName) not]