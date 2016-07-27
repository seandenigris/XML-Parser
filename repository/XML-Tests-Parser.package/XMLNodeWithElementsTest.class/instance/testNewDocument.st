tests
testNewDocument
	| node document |

	node := self nodeClass new.
	document := node newDocument.
	self
		assert: document isDocument;
		assert: document configuration == node configuration;
		assert: document nodeFactory == node nodeFactory.