tests
testExampleAddressBook
	| tokenizer |
	"self debug: #testExampleAddressBook"

	tokenizer := XMLTokenizer on: self addressBookXML readStream.

	"We enumerate the first characters of the addressbook example.
	The file being parsed begins with <addressbook"
	self assert: tokenizer streamReader next = $<.
	self assert: tokenizer streamReader next = $a.	
	self assert: tokenizer streamReader next = $d.
	self assert: tokenizer streamReader next = $d.
	self assert: tokenizer streamReader next = $r.

	self
		shouldnt: [tokenizer streamReader next notNil] whileTrue
		raise: Error. 