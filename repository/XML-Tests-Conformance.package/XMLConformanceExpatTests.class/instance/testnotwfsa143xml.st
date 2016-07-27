tests - exception raising
testnotwfsa143xml
	"Source file: xmltest/not-wf/sa/143.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa143xml
				documentURI: 'not-wf/sa/143.xml']
		raise: self parserExceptions