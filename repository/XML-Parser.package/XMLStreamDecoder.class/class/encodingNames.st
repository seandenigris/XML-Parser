accessing
encodingNames
	^ encodingNames ifNil: [
		encodingNames := self basicEncodingNames asSet.
		self basicEncodingNames do: [:each |
			encodingNames
				add: each asLowercase;
				add: each asUppercase].
		encodingNames]