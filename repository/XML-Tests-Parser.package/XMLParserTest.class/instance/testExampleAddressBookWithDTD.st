tests
testExampleAddressBookWithDTD
	| tokenizer |
	"XMLTokenizer exampleAddressBookWithDTD"

	tokenizer :=
		XMLTokenizer
			driver: nil
			on: self addressBookXMLWithDTD readStream.
	self
		shouldnt: [tokenizer streamReader next notNil] whileTrue
		raise: Error