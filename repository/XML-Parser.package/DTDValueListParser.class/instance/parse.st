parsing
parse
	(valueListStream atEnd not
		and: [valueListStream next == $(])
		ifFalse: [XMLValidationException signal: 'Expected value list'].

	[valueListStream atEnd
		or: [valueListStream peek == $)]]
		whileFalse: [
			valueListStream skipSeparators.
			self parseListValue.
			valueListStream skipSeparators.

			(valueListStream atEnd not
				and: [valueListStream peek == $|])
				ifTrue: [valueListStream next]].
	self parseListTerminator.

	^ listValues.