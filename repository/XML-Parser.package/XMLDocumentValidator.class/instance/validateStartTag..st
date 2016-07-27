validation
validateStartTag: aName
	self elementValidatorStack
		ifNotEmpty: [self currentElementValidator validateStartTag: aName].

	self elementValidatorStack addLast:
		((self elementValidatorFor: aName)
			ifNil: [
				self
					unvalidatedElement: aName;
					defaultElementValidatorFor: aName]).