printing
printLongTagOn: aStream
	aStream nextPutAll: '<', self tag.
	self printAttributesOn: aStream.
	aStream nextPutAll: '>'.

	self children isEmpty ifTrue: [
		aStream nextPutAll: self characters.
	] ifFalse: [
		self printChildrenOn: aStream.
	].

	aStream nextPutAll: '</', self tag, '>','
'