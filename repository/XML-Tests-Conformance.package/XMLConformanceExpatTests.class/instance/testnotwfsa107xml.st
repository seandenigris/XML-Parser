tests - exception raising
testnotwfsa107xml
	"Source file: xmltest/not-wf/sa/107.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa107xml
				documentURI: 'not-wf/sa/107.xml']
		raise: self parserExceptions