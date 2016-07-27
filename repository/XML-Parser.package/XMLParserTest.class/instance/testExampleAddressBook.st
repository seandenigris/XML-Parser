tests
testExampleAddressBook
	| tokenizer |
	"self debug: #testExampleAddressBook"

	tokenizer := XMLTokenizer on: self addressBookXML readStream.

	"We enumerate the first characters of the addressbook example. The file being parsed begins with <addressbook"
	self assert: tokenizer next = $<.
	self assert: tokenizer next = $a.	
	self assert: tokenizer next = $d.
	self assert: tokenizer next = $d.
	self assert: tokenizer next = $r.

	self shouldnt: ([tokenizer next notNil] whileTrue: []) raise: Error. 