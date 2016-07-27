assertions
assertElement: anElement hasAttributes: aDictionary
	self assert:
		(Dictionary newFrom: anElement attributes) =
			(Dictionary newFrom: aDictionary)