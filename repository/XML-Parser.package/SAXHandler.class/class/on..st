instance creation
on: aStream
	| driver |
	driver := SAXDriver on:
		(aStream isStream
			ifTrue: [aStream]
			ifFalse: [aStream readStream]).
	driver validating: true.
	^ self new driver: driver.