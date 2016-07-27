tokenizing - dtd
nextStartIncludeSection
	self
		expectNextAll: 'INCLUDE'
		startingAt: 2. "the 'I' was already read"
	streamReader skipSeparators.
	self expectNext: $[.
	totalOpenIncludeSections := self totalOpenIncludeSections + 1.