private
toString: aStringOrStringNode
	^ (aStringOrStringNode isKindOf: self class)
		ifTrue: [aStringOrStringNode string]
		ifFalse: [aStringOrStringNode]