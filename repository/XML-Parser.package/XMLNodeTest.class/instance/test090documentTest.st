tests
test090documentTest
	| doc root |

	doc := XMLDocument new.
	root := XMLElement new.
	self
		assert: doc isDocument;
		assert: doc root isNil;
		assert: (doc addElement: root) root = root;
		assertDocument: doc dtd: nil version: nil encoding: 'UTF-8' required: nil.

	self
		assertDocument: (doc dtd: '<!DOCTYPE root>')
		dtd: '<!DOCTYPE root>'
		version: nil
		encoding: 'UTF-8'
		required: nil.
	self
		assertDocument: (doc version: '1.0')
		dtd: '<!DOCTYPE root>'
		version: '1.0'
		encoding: 'UTF-8'
		required: nil.
	self
		assertDocument: (doc encoding: 'ISO Latin-1')
		dtd: '<!DOCTYPE root>'
		version: '1.0'
		encoding: 'ISO Latin-1'
		required: nil.
	self
		assertDocument: (doc requiredMarkup: 'root')
		dtd: '<!DOCTYPE root>'
		version: '1.0'
		encoding: 'ISO Latin-1'
		required: 'root'.