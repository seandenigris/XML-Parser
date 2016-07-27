private
with: aBlock add: anObject
	self
		adding: anObject;
		with: [aBlock value] onError: [^ nil];
		added: anObject.
	^ anObject.