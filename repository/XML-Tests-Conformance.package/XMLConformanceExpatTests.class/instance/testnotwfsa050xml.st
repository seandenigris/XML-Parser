tests - exception raising
testnotwfsa050xml
	"Source file: xmltest/not-wf/sa/050.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa050xml
				documentURI: 'not-wf/sa/050.xml']
		raise: self parserExceptions