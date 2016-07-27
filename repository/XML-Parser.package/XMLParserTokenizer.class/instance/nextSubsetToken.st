tokenizing - dtd
nextSubsetToken
	streamReader skipSeparators.
	streamReader atEnd
		ifTrue: [^ self].

	streamReader peek == $%
		ifTrue: [
			streamReader next.
			^ self nextParameterEntityReference].
	(context isInternalSubsetContext and: [streamReader peek == $]])
		ifTrue: [^ self nextEndInternalSubset].

	self nextSubsetMarkupToken.