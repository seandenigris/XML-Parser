tests - exception raising
testnotwfsa064xml
	"Source file: xmltest/not-wf/sa/064.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa064xml
				documentURI: 'not-wf/sa/064.xml']
		raise: self parserExceptions