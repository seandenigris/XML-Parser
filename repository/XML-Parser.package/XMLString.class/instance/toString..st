private
toString: aStringOrStringNode
	^ (aStringOrStringNode isKindOf: XMLString)
		ifTrue: [aStringOrStringNode string]
		ifFalse: [aStringOrStringNode]