private
with: aBlock remove: anObject
	aBlock value.
	self afterRemoving: anObject.
	^ anObject.