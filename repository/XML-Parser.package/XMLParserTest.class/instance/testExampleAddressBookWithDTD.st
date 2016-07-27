tests
testExampleAddressBookWithDTD
	| tokenizer |
	"XMLTokenizer exampleAddressBookWithDTD"

	tokenizer := XMLTokenizer on: self addressBookXMLWithDTD readStream.
	self shouldnt: ([tokenizer next notNil] whileTrue: []) raise: Error