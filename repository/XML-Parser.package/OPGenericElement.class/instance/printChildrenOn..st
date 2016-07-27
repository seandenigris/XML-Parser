printing
printChildrenOn: aStream
	| childStream |

	aStream nextPut: Character cr.
	childStream := ReadWriteStream on: String new.

	self children do: [ :each | each printOn: childStream ].

	childStream reset.
	[ childStream atEnd ] whileFalse: [
		aStream nextPutAll: '    '.
		aStream nextPutAll: (childStream upTo: Character cr).
		aStream nextPut: Character cr.
	
	]