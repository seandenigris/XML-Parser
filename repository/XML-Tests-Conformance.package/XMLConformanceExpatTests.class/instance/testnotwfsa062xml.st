tests - exception raising
testnotwfsa062xml
	"Source file: xmltest/not-wf/sa/062.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa062xml
				documentURI: 'not-wf/sa/062.xml']
		raise: self parserExceptions