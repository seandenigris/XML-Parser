parsing
parseAfterList
	(valueListStream atEnd
		or: [valueListStream next == $*
			and: [valueListStream atEnd]])
		ifFalse: [
			XMLValidationException signal:
				'Mixed content list can only be followed by "*"'].