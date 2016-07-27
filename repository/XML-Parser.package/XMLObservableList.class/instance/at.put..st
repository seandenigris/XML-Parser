accessing
at: anIndex put: anObject
	(self at: anIndex ifAbsent: nil)
		ifNotNil: [:oldObject |
			self
				with: [super at: anIndex put: nil]
				remove: oldObject].

	^ self with: [super at: anIndex put: anObject] add: anObject.