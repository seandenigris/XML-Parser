private
with: aBlock remove: anObject
	self
		with: [aBlock value] onError: [^ nil];
		removed: anObject.
	^ anObject.