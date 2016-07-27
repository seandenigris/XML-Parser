accessing
contentStringAt: aSymbol
	^ (self elementAt: aSymbol ifAbsent: [^ '']) contentString