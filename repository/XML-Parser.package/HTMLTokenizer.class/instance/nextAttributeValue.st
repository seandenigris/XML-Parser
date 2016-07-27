tokenizing
nextAttributeValue
	| quote value |

	streamReader peek == $&
		ifTrue: [^ self nextUnparsedEntityReference].

	streamReader atQuote
		ifFalse: [^ self nextName].
	quote := streamReader next.
	context resetAfter: [
		context enterLiteralValue.
		value := self
			nextDelimitedBy: quote and: nil
			entityChar: $&
			normalizeWhitespace: false
			ignorableWhitespace: false].
	self expectNext: quote.

	^ value.