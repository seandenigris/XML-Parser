private
parseListTerminator
	(valueListStream atEnd not
		and: [valueListStream next == $)])
		ifFalse: [self errorMissingListEnd].

	self parseAfterList.