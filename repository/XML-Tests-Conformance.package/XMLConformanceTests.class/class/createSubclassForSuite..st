building subclasses
createSubclassForSuite: aSuite
	^ self
		subclass: (self classNameForSuite: aSuite)
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self category