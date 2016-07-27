assertions
assertNotification: aNotification forElement: anElement andList: aList hasType: aSelectorColleciton
	self assert: (aSelectorColleciton includes: aNotification selector).
	self assert:
		aNotification arguments =
			((Array with: anElement with: aList)
				copyFrom: 1
				to: (aNotification selector asString occurrencesOf: $:)).