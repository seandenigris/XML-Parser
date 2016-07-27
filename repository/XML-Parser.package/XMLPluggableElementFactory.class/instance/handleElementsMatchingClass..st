accessing
handleElementsMatchingClass: aClass
	| className camelCaseName camelCaseStream hyphenatedStream |

	(className := self removePrefixAndElementSuffixFrom: aClass name asString)
		ifEmpty: [^ self].

	camelCaseName := className allButFirst copyWithFirst: className first asLowercase.
	self handleElement: camelCaseName withClass: aClass.

	camelCaseStream := camelCaseName readStream.
	hyphenatedStream := (String new: camelCaseName size) writeStream.
	[camelCaseStream atEnd]
		whileFalse: [
			camelCaseStream peek isUppercase
				ifTrue: [hyphenatedStream nextPut: $-].
			hyphenatedStream nextPut: camelCaseStream next asLowercase].
	self handleElement: hyphenatedStream contents withClass: aClass.