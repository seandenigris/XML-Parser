tests - exception raising
testp14fail2xml
	"Source file: oasis/p14fail2.xml"

	(self isSkippableTest: #testp14fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep14fail2xml
				documentURI: 'p14fail2.xml']
		raise: self parserExceptions