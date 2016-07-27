parsing
parseScheme
	| scheme |

	scheme := uriStream upTo: $:.
	^ self parseDoubleSlashOrReset
		ifTrue: [scheme asLowercase]
		ifFalse: [''].

	
	
		