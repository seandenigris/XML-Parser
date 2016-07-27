private
with: aBlock add: anObject
	self
		beforeAdding: anObject;
		with: aBlock ifResumingAfterError: [^ nil];
		afterAdding: anObject.
	^ anObject.