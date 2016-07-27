tokenizing
nextAttributeValue
	| quote value |

	streamReader peek == $&
		ifTrue: [^ self nextUnparsedEntityReference].

	quote := self expectQuote.
	context resetAfter: [
		context enterLiteralValue.
		value := self
			nextDelimitedBy: quote and: $<
			entityChar: $&
			normalizeWhitespace: true
			ignorableWhitespace: false].
	self expectNext: quote.

	^ value.