assertions
assertElement: anElement attributes: aDictionary
	self assert:
		((aDictionary isMemberOf: Dictionary)
			ifTrue: [(Dictionary newFrom: anElement attributes)]
			ifFalse: [anElement attributes]) = aDictionary