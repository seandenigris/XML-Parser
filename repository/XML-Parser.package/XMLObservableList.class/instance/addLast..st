adding
addLast: anObject
	"inlined for speed"
	self beforeAdding: anObject.
	collection addLast: anObject.
	self afterAdding: anObject.
	^ anObject