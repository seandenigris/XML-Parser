tests - exception raising
testnotwfsa113xml
	"Source file: xmltest/not-wf/sa/113.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa113xml
				documentURI: 'not-wf/sa/113.xml']
		raise: self parserExceptions