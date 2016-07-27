private
with: aBlock remove: anObject
	self
		with: aBlock ifResumingAfterError: [^ nil];
		afterRemoving: anObject.
	^ anObject.