accessing
pushScope: aScope
	self scopes add: (aScope isValidating: self isValidating)