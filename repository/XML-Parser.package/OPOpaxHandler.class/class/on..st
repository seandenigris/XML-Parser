instance creation
on: aStream
	| driver parser |
	driver := SAXDriver on: aStream.
	"driver validating: false."
	parser := self new driver: driver.
	^parser