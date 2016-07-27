accessing
children
	^children isNil 
		ifTrue: [children := OrderedCollection new]
		ifFalse: [children].