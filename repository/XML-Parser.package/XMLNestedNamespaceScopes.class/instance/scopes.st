accessing
scopes
	^ scopes ifNil: [scopes := OrderedCollection new: 20]