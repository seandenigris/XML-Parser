tests - exception raising
testp02fail11xml
	"Source file: oasis/p02fail11.xml"

	(self isSkippableTest: #testp02fail11xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail11xml
				documentURI: 'p02fail11.xml']
		raise: self parserExceptions