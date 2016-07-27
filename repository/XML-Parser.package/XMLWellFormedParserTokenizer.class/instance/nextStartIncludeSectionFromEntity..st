tokenizing - dtd
nextStartIncludeSectionFromEntity: aParameterEntity
	self
		expectNextAll: 'INCLUDE'
		startingAt: 2. "the 'I' was already read"
	streamReader skipSeparators.
	self expectNext: $[.
	self topPushedBackEntity == aParameterEntity
		ifFalse: [driver handleImproperParameterEntityNesting].
	self openIncludeSections addLast: aParameterEntity.