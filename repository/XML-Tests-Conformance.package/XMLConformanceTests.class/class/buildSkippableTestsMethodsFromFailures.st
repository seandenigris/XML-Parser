building subclasses
buildSkippableTestsMethodsFromFailures
	"Run this after possibly fixing a failing skipped test.
	If fixed, it will be excluded form the list of skippable tests.

	self buildSkippableTestsMethodsFromFailures"

	self buildDefaultSkippableTestsMethods.
	self allSubclassesDo: [:testCaseClass | | result failures methodSource |
		result := testCaseClass buildSuite run.
		failures := result failures collect: [:each | each selector asString].
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