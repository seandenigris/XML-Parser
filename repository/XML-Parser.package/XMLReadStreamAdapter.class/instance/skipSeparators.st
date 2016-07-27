positioning
skipSeparators
	"xmlParserIsWhitespace matches the Squeak/Pharo isSeparator range, so
	it is used here instead of xmlParserIsSeparator to give expected behavior
	when reading non-XML files"
	[self atEnd not
		and: [self peek xmlParserIsWhitespace]]
		whileTrue: [self next]