private
with: aBlock add: anObject
	self
		beforeAdding: anObject;
		with: [aBlock value] onError: [^ nil];
		afterAdding: anObject.
	^ anObject.