writing markup
entityRef: aName
	self
		write;
		nextPut: $&;
		writeName: aName;
		nextPut: $;