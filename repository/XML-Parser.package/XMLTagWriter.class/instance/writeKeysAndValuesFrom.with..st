private
writeKeysAndValuesFrom: aDictionary with: aTwoArgumentBlock
	self writer isCanonical
		ifTrue: [
			aDictionary keys asSortedCollection do: [:each |
				aTwoArgumentBlock value: each value: (aDictionary at: each)]]
		ifFalse: [aDictionary keysAndValuesDo: aTwoArgumentBlock]