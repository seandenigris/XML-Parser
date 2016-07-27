accessing
isValidating: aBoolean
	isValidating := aBoolean.
	self scopes do: [:each | each isValidating: aBoolean]