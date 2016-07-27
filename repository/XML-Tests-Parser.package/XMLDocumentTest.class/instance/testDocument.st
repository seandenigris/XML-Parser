tests
testDocument
	| document |

	super testDocument.

	document := self nodeClass new.
	self assert: document document == document.

	document := self newNodeWithElements.
	self assert: document document == document.