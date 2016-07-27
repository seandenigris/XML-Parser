printing
canonicallyPrinted
	^ String streamContents: [:stream | self canonicallyPrintOn: stream]