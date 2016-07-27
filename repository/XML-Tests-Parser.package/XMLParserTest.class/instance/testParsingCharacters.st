tests
testParsingCharacters
	| tokenizer |
	"This test is actually not that useful. This is not the proper way of using the parser.
	This test is here just for specification purpose"
	"self debug: #testParsingCharacters"

	tokenizer := XMLTokenizer driver: nil on: self addressBookXML readStream.

	self assert: tokenizer streamReader next = $<.
	self assert: tokenizer streamReader next = $a.
	self assert: tokenizer streamReader next = $d.
	self assert: tokenizer streamReader next = $d.
	self assert: tokenizer streamReader next = $r.