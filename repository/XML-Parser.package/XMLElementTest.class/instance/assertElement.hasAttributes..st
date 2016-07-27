assertions
assertElement: anElement hasAttributes: aDictionary
	self assert:
		((aDictionary isMemberOf: Dictionary)
			ifTrue: [(Dictionary newFrom: anElement attributes) = aDictionary]
			ifFalse: [anElement attributes = aDictionary])