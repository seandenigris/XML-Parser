tokenizing
nextAttributeValue
	| quote value |

	((quote := streamReader next) == $"
		or: [quote == $'])
		ifFalse: [
			quote == $&
				ifTrue: [^ self nextUnparsedEntityReference]
				ifFalse: [self errorExpected: 'start of quoted attribute value']].
	
	context
		saveCurrent;
		enterLiteralValue.
	value := self nextAttributeValueDelimitedBy: quote.
	context resetPrevious.
	(streamReader next == quote)
		ifFalse: [self errorExpected: 'end of quoted attribute value'].

	^ value.