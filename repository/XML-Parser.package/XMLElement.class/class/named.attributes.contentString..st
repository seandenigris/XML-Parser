instance creation
named: aString attributes: attributeList contentString: aContentString
	^self new
		name: aString;
		setAttributes: attributeList;
		contentString: aContentString