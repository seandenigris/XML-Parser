tests - exception raising
testnotwfsa037xml
	"Source file: xmltest/not-wf/sa/037.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa037xml
				documentURI: 'not-wf/sa/037.xml']
		raise: self parserExceptions