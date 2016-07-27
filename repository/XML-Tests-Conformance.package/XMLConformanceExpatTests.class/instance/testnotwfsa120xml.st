tests - exception raising
testnotwfsa120xml
	"Source file: xmltest/not-wf/sa/120.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa120xml
				documentURI: 'not-wf/sa/120.xml']
		raise: self parserExceptions