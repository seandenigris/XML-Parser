tests - exception raising
testnotwfsa147xml
	"Source file: xmltest/not-wf/sa/147.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa147xml
				documentURI: 'not-wf/sa/147.xml']
		raise: self parserExceptions