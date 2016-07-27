tests
testParsingCharacters
	| parser |
	"This test is actually not that useful. This is not the proper way of using the parser. This test is here just for specification purpose"
	"self debug: #testParsingCharacters"

	parser := SAXDriver on: self addressBookXML readStream.

	self assert: parser streamReader next = $<.
	self assert: parser streamReader next = $a.
	self assert: parser streamReader next = $d.
	self assert: parser streamReader next = $d.
	self assert: parser streamReader next = $r.