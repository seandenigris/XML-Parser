content
startDocument
	self topNode ifNotNil: [^ self].

	self document: self nodeFactory documentClass new.
	self pushNode: self document 