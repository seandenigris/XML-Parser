validating
validateNotationAttributes
	"this validatin has to be delayed until the entire DTD
	is processed so NOTATION attributes can be declared before
	the notations in their enumeration are"
	self notationAttributeValidators valuesDo: [:validator |
		validator allowedValues do: [:each |
			(self notations includes: each)
				ifFalse: [
					self
						errorUndeclaredNotation: each
						inAttribute: validator attribute]]]