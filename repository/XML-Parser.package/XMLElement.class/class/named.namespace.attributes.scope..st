instance creation
named: aString namespace: ns attributes: attributeList scope: namespaceScope
	^ self new
		setScope: namespaceScope;
		setAttributes: attributeList;
		name: aString namespace: ns