tests - exception raising
testnotwfsa014xml
	"Source file: xmltest/not-wf/sa/014.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa014xml
				documentURI: 'not-wf/sa/014.xml']
		raise: self parserExceptions