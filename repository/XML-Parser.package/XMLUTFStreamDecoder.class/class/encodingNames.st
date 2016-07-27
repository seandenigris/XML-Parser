accessing
encodingNames
	^ encodingNames ifNil: [
		(encodingNames := self basicEncodingNames asSet)
			addAll: (self basicEncodingNames collect: [:each | each asUppercase]);
			yourself]