building subclasses
buildTestMethodFor: aFileReference in: aClass usingTemplate: aTemplate classified: aCategory
	| failingTestSelector sourceSelector pathString documentURI |

	failingTestSelector := self testSelectorFor: aFileReference.
	sourceSelector := self sourceSelectorFor: aFileReference.
	pathString := self relativePathStringFor: aFileReference.
	documentURI := self documentURIFor: aFileReference.
	aClass
		compile:
			(aTemplate format:
				(Array
					with: failingTestSelector asString
					with: pathString
					with: sourceSelector asString
					with: documentURI))
		classified: aCategory