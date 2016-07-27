tests - exception raising
teste2xml
	"Source file: oasis/e2.xml"

	(self isSkippableTest: #teste2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcee2xml
				documentURI: 'e2.xml']
		raise: self parserExceptions