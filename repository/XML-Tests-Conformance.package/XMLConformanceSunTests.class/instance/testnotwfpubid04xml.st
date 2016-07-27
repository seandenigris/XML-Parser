tests - exception raising
testnotwfpubid04xml
	"Source file: sun/not-wf/pubid04.xml"

	self
		should: [
			self
				parse: self class sourcenotwfpubid04xml
				documentURI: 'not-wf/pubid04.xml']
		raise: self parserExceptions