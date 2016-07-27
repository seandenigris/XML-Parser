tokenizing dtd
nextEntityValue
	| quote value  |

	quote := streamReader next.
	context resetAfter: [
		context enterLiteralValue.
		value := self
			nextDelimitedBy: quote and: nil
			entityChar: $%
			entitySelector: #nextParameterEntityReference
			normalizeWhitespace: false
			ignorableWhitespace: false].
	self expectNext: quote.

	^ value.