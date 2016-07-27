parsing
domDocument
	[self parseDocument] ensure: [self driver stream close].

	^ document.