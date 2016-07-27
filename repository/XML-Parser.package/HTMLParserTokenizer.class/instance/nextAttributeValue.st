tokenizing
nextAttributeValue
	| quote value |

	streamReader atQuote
		ifFalse: [^ self nextName].
	quote := streamReader next.

	context
		saveCurrent;
		enterLiteralValue.
	value := self nextAttributeValueDelimitedBy: quote.
	context resetPrevious.

	self expectNext: quote.

	^ value.