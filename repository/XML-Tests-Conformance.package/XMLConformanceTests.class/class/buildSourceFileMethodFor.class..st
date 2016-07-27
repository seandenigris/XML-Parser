building subclasses
buildSourceFileMethodFor: aFileReference class: aClass
	| sourceSelector pathString sourceStream |

	sourceSelector := (self sourceSelectorFor: aFileReference).
	pathString := self relativePathStringFor: aFileReference.

	sourceStream := (String new: aFileReference size) writeStream.
	aFileReference readStreamDo: [:readStream |
		[readStream atEnd not]
			whileTrue: [
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
		classified: 'xml source' asSymbol.