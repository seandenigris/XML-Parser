printing
prettyPrinted
	^ String streamContents: [:stream | self prettyPrintOn: stream]