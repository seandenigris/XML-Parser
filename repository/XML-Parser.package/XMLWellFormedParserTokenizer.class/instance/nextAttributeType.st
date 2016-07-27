tokenizing - dtd
nextAttributeType
	| nextChar |

	writeStream reset.
	[self skipSeparatorsReplacingParameterEntities.
	(nextChar := streamReader peek) == nil
		or: [AttributeTypeDelimiters includes: nextChar]]
		whileFalse: [
			(ValueListChars includes: nextChar)
				ifTrue: [
					writeStream position > 0
						ifTrue: [writeStream space].
					writeStream nextPut: streamReader next]
				ifFalse: [self nextNmtokenOn: writeStream]].
	^ writeStream contents.