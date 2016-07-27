tokenizing - dtd
nextSystemLiteralRequired: aBoolean	
	| quote value |

	(aBoolean or: [streamReader atQuote])
		ifTrue: [
			quote := self expectQuote.
			value := streamReader upTo: quote]
		ifFalse: [value := ''].
	^ value.