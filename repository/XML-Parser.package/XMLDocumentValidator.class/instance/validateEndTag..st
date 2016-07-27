validation
validateEndTag: aName
	self hasElementValidators
		ifTrue: [
			(self currentElementValidator name = aName)
				ifTrue: [
					self currentElementValidator atEnd
						ifFalse: [self errorMissingContentFor: aName]].
			self elementValidatorStack removeLast]