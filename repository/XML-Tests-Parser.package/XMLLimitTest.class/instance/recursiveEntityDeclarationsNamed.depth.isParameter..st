private
recursiveEntityDeclarationsNamed: aName depth: aLimit isParameter: aBoolean
	| entityDeclarations |

	entityDeclarations := String new writeStream.
	1 to: aLimit do: [:i |
		entityDeclarations
			cr;
			nextPutAll: '<!ENTITY '.
		aBoolean
			ifTrue: [entityDeclarations nextPutAll: '% '].

		entityDeclarations
			nextPutAll: aName, i printString;
			nextPutAll: ' "'.
			(i = aLimit)
				ifTrue: [entityDeclarations nextPutAll: '<!--last-->']
				ifFalse: [
					aBoolean
						ifTrue: [entityDeclarations nextPutAll: '&#37;']
						ifFalse: [entityDeclarations nextPut: $&].
					entityDeclarations
						nextPutAll: aName, (i + 1) printString;
						nextPut: $;].
		entityDeclarations nextPutAll: '">'].

	^ entityDeclarations contents.