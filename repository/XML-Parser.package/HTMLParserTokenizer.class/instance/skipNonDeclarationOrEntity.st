tokenizing - dtd
skipNonDeclarationOrEntity
	[streamReader atEnd
		or: [(streamReader peek == $<)
			or: [(streamReader peek == $%)
				or: [context isInInternalSubset and: [streamReader peek ==$]]]]]]
		whileFalse: [streamReader next].
	