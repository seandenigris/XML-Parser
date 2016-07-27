private
append: anObject withDescription: aDescription
	self messageText:
		('{1} ({2} {3})' format:
			(Array
				with: (self messageText ifNil: [''])
				with: aDescription
				with: anObject))