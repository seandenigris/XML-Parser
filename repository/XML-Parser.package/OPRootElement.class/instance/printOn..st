printing
printOn: aStream
	aStream
		nextPutAll: '<?xml version="1.0" encoding="utf-8"?>';
		nextPut: Character cr.
	self children do: [ :each | each printOn: aStream ].