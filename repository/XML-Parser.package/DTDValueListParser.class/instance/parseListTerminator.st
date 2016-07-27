parsing
parseListTerminator
	(valueListStream atEnd not
		and: [valueListStream next == $)])
		ifFalse: [XMLValidationException signal: 'Missing list terminator ")"'].

	self parseAfterList.