tests
testIsXMLChar
	self class nonChars do: [:each |
		self deny: each isXMLChar]