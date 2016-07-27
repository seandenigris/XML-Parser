writing markup
entityRef: aName
	self
		flushMarkup;
		nextPut: $&;
		writeName: aName;
		nextPut: $;