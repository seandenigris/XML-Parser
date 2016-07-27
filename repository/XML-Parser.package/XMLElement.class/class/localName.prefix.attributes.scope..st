instance creation
localName: aString prefix: ns attributes: attributeList scope: namespaceScope
	^ self new
		setScope: namespaceScope;
		setPrefix: ns localName: aString;
		setAttributes: attributeList