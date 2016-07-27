tests
testIsNCName
	self badNCNames do: [:each |
		self deny: (self tokenizerClass isNCName: each)].