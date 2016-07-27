testing
isVoidElement: anElementName
	^ (HtmlTagInformation at: anElementName ifAbsent: [^ false]) isSelfClosing