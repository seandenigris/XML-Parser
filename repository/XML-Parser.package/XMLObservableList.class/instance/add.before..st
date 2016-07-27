adding
add: anObject before: aSubsequentObject
	^ self with: [super add: anObject before: aSubsequentObject] add: anObject