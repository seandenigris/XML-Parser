tests
testIsName
	self nonNCNameNames do: [:each |
		self assert: (self tokenizerClass isName: each)].
	self badNames do: [:each |
		self deny: (self tokenizerClass isName: each)].