building subclasses
buildSkippableTestsMethodsFromFailures
	"Run this after possibly fixing a failing skipped test so it
	will be excluded form the list of skippable tests.

	self buildSkippableTestsMethodsFromFailures
	"

	self buildDefaultSkippableTestsMethods.
	self allSubclassesDo: [:testCaseClass | | result failures methodSource |
		result := testCaseClass buildSuite run.
		failures := OrderedCollection new.
		result failures do: [:each | failures addLast: each selector asString].
		failures sort.

		methodSource :=
			(String streamContents: [:stream |
				stream nextPutAll: 'skippableTests
	^ #('.
				failures do: [:each |
					stream
						space;
						nextPutAll: each].
				stream nextPutAll: ' )']).

		testCaseClass class
			compile: methodSource
			classified: #accessing]