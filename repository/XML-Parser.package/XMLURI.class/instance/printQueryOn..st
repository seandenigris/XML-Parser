printing
printQueryOn: aStream
	| atBeginning |

	self hasQuery
		ifFalse: [^ self].
	
	aStream nextPut: $?.
	atBeginning := true.
	self queryKeysAndValuesDo: [:key :value |
		atBeginning
			ifTrue: [atBeginning := false]
			ifFalse: [aStream nextPut: $&].
		self
			print: key
			withPercentOrPlusEncodingOn: aStream.
		aStream nextPut: $=.
		self
			print: value
			withPercentOrPlusEncodingOn: aStream].