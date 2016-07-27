building subclasses
buildTestMethodFor: aFileReference in: aClass usingTemplate: aTemplate classified: aCategory
	| failingTestSelector sourceSelector pathString documentUri |

	failingTestSelector := self testSelectorFrom: aFileReference.
	sourceSelector := self sourceSelectorFrom: aFileReference.
	pathString := self pathStringFrom: aFileReference.
	documentUri := self documentURIFrom: aFileReference.
	aClass
		compile:
			(aTemplate format:
				(Array
					with: failingTestSelector asString
					with: pathString
					with: sourceSelector asString
					with: documentUri))
		classified: aCategory