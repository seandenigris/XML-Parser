instance creation
parseDocumentFrom: aStream useNamespaces: aBoolean
	^(super
		parseDocumentFrom: (aStream isStream ifTrue: [aStream] ifFalse: [aStream readStream])
		useNamespaces: aBoolean) document