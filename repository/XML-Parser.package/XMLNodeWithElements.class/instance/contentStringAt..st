accessing
contentStringAt: aString
	^ (self elementAt: aString ifAbsent: [^ '']) contentString