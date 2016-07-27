private
replaced: anOldObject with: aNewObject at: aNewIndex
	| i |

	(i :=
		self
			indexOf: anOldObject
			notAt: aNewIndex) > 0
		ifTrue: [
			anOldObject == aNewObject
				ifTrue: [
					"exact same object being moved to another index; can be
					removed directly without signaling observers"
					collection removeAt: i]
				ifFalse: [self removeAt: i]]