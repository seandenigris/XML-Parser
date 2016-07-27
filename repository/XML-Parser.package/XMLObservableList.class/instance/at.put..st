removing
at: anIndex put: anObject
	| presentObject |

	(presentObject := self at: anIndex)
		ifNotNil: [
			self
				with: [super at: anIndex put: nil]
				remove: presentObject].

	^ self with: [super at: anIndex put: anObject] add: anObject.