parsing
parse
	(valueListStream atEnd not
		and: [valueListStream next == $(])
		ifFalse: [XMLValidationException signal: 'Expected value list'].

	[valueListStream atEnd
		or: [valueListStream peek == $)]]
		whileFalse: [
			self parseListValue.
			(valueListStream atEnd not
				and: [valueListStream peek == $|])
				ifTrue: [valueListStream next]].
	self parseListTerminator.

	^ listValues.