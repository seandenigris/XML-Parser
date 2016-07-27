tests - exception raising
testnotwfsa118xml
	"Source file: xmltest/not-wf/sa/118.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa118xml
				documentURI: 'not-wf/sa/118.xml']
		raise: self parserExceptions