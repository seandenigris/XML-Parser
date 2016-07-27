testing
isBodySectionOnlyElement: anElementName
	^ (BodySectionElements includes: anElementName)
		and: [(HeadSectionElements includes: anElementName) not]