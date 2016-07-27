tests
test090documentTest
	| doc root doctype |

	doc := XMLDocument new.
	root := XMLElement new.
	doctype := XMLDoctypeDeclaration root: 'root' publicID: 'public' systemID: 'system'.
	self
		assert: doc isDocument;
		assert: doc root isNil;
		assert: (doc addElement: root) root = root;
		assertDocument: doc doctype: nil version: nil encoding: 'UTF-8'.

	self
		assertDocument: (doc doctypeDeclaration: doctype)
		doctype: doctype
		version: nil
		encoding: 'UTF-8'.
	self
		assertDocument: (doc version: 1.0)
		doctype: doctype
		version: 1.0
		encoding: 'UTF-8'.
	self
		assertDocument: (doc encoding: 'ISO Latin-1')
		doctype: doctype
		version: 1.0
		encoding: 'ISO Latin-1'.