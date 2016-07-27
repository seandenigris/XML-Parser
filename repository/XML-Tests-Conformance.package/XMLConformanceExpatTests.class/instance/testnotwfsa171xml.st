tests - exception raising
testnotwfsa171xml
	"Source file: xmltest/not-wf/sa/171.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa171xml
				documentURI: 'not-wf/sa/171.xml']
		raise: self parserExceptions