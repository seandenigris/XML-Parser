tests - exception raising
testnotwfsa007xml
	"Source file: xmltest/not-wf/sa/007.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa007xml
				documentURI: 'not-wf/sa/007.xml']
		raise: self parserExceptions