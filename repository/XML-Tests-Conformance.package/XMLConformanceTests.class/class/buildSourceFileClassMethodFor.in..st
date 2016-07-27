building subclasses
buildSourceFileClassMethodFor: aFileReference in: aClass
	| sourceSelector pathString sourceStream |

	sourceSelector := self sourceSelectorFor: aFileReference.
	pathString := self relativePathStringFor: aFileReference.

	sourceStream := (String new: aFileReference size) writeStream.
	"Use XMLFileHandle to get proper (inferred from BOMs) decoding of both
	UTF-8 and UTF-16. This makes it harder to test for invalid UTF in source
	but easier to get the xml source into the image."
	aFileReference fullName asXMLFileHandle readStreamDo: [:readStream |
		[readStream atEnd]
			whileFalse: [
				readStream peek == $'
					ifTrue: [sourceStream nextPut: $'].
				sourceStream nextPut: readStream next]].

	aClass class
		compile:
			(self sourceFileMethodTemplate format:
				(Array
					with: sourceSelector asString
					with: pathString
					with: sourceStream contents))
		classified: #'xml source'.