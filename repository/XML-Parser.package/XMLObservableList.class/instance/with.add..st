private
with: aBlock add: anObject
	self beforeAdding: anObject.
	aBlock value.
	self afterAdding: anObject.
	^ anObject.