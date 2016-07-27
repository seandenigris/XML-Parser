tokenizing dtd
nextSystemLiteralRequired: aBoolean	
	| quote value |

	(aBoolean or: [self atQuote])
		ifTrue: [
			quote := self expectQuote.
			value := streamReader upTo: quote]
		ifFalse: [value := ''].
	^ value.