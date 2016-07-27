building subclasses
buildTestMethodFor: aFileReference in: aClass usingTemplate: aTemplate classified: aCategory
	| failingTestSelector sourceSelector pathString documentUri |

	failingTestSelector := self testSelectorFor: aFileReference.
	sourceSelector := self sourceSelectorFor: aFileReference.
	pathString := self relativePathStringFor: aFileReference.
	documentUri := self documentURIFor: aFileReference.
	aClass
		compile:
			(aTemplate format:
				(Array
					with: failingTestSelector asString
					with: pathString
					with: sourceSelector asString
					with: documentUri))
		classified: aCategory