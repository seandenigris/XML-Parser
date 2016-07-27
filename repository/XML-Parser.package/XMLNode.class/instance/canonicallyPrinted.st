printing
canonicallyPrinted
	^ String streamContents: [:stream | self printCanonicalOn: stream]