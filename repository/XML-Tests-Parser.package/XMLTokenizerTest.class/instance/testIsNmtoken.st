tests
testIsNmtoken
	self nonNCNameNames do: [:each |
		self assert: (self tokenizerClass isNmtoken: each)].
	self nonNameNmtokens do: [:each |
		self assert: (self tokenizerClass isNmtoken: each)].
	self badNmtokens do: [:each |
		self deny: (self tokenizerClass isNmtoken: each)].