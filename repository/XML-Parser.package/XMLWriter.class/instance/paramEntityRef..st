writing markup
paramEntityRef: aName
	self
		flushMarkup;
		nextPut: $%;
		writeName: aName;
		nextPut: $;