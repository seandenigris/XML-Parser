assertions
assertElement: anElement hasContentString: aContentString withStrings: aStringArray
	| combinedStrings |

	self assert: anElement contentString = aContentString.
	combinedStrings := anElement stringNodes collect: [:each | each string].
	self assert: combinedStrings asArray = aStringArray asArray.