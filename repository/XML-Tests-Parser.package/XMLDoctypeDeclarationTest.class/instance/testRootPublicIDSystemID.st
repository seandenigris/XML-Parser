tests
testRootPublicIDSystemID
	| doctype |

	doctype := self nodeClass root: 'one' publicID: 'two' systemID: 'three'.
	self
		assert: doctype root = 'one';
		assert: doctype publicID = 'two';
		assert: doctype systemID = 'three'