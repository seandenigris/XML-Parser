adding
add: anObject beforeIndex: anIndex
	self beforeAdding: anObject.
	collection
		add: anObject
		beforeIndex: anIndex.
	self
		afterAdding: anObject
		at: anIndex - 1.
	^ anObject.