tests - exception raising
testnotwfencoding04xml
	"Source file: sun/not-wf/encoding04.xml"

	self
		should: [
			self
				parse: self class sourcenotwfencoding04xml
				documentURI: 'not-wf/encoding04.xml']
		raise: self parserExceptions