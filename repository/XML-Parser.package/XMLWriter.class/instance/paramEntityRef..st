writing markup
paramEntityRef: aName
	self
		write;
		nextPut: $%;
		writeName: aName;
		nextPut: $;