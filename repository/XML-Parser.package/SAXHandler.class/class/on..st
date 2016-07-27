instance creation
on: aStream
	| driver |
	driver := SAXDriver on:
		(aStream isStream
			ifTrue: [aStream]
			ifFalse: [aStream readStream]).
	^ self new
		driver: driver;
		isValidating: true.