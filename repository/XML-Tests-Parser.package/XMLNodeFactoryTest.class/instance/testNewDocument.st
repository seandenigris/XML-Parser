tests
testNewDocument
	| newDocument |

	newDocument := self newFactory newDocument.
	self assert: newDocument class == self documentClass.