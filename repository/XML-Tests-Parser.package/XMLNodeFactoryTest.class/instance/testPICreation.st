tests
testPICreation
	| factory document pi |

	factory := self newFactory.
	document := factory newDocument.
	pi := document newPI.
	self assert: pi class == self piClass.