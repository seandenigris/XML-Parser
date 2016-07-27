validation
validateAndResolvePrefix: aPrefix ofElement: aName
	aPrefix isEmpty
		ifTrue: [
			self validateUnprefixedName: aName.
			^ self defaultNamespace]
		ifFalse: [^ self validateAndResolvePrefix: aPrefix]