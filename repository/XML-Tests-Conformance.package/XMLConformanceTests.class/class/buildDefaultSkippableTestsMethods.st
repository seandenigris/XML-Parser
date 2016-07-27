building subclasses
buildDefaultSkippableTestsMethods
	"self buildDefaultSkippableTestsMethods"
	self allSubclassesDo: [:each |
		each class
			compile: 'skippableTests
	^ #()'
			classified: #accessing].