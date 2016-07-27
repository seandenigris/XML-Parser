tests
testParsingCharacters
	| parser |
	"This test is actually not that useful. This is not the proper way of using the parser. This test is here just for specification purpose"
	"self debug: #testParsingCharacters"

	parser := XMLParser on: self addressBookXML readStream.

	self assert: parser next = $<.
	self assert: parser next = $a.	
	self assert: parser next = $d.
	self assert: parser next = $d.
	self assert: parser next = $r.