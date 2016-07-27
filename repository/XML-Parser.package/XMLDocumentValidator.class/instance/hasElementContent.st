testing
hasElementContent
	self hasElementValidators
		ifTrue: [
			self currentElementValidator
				ifNotNil: [:elementValidator |
					^ elementValidator hasElementContent]].
	^ false.