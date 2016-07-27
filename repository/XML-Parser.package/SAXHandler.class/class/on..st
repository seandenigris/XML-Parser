instance creation
on: aStream
	| driver parser |
	driver := SAXDriver on: aStream.
	driver validating: true.
	parser := self new driver: driver.
	^parser