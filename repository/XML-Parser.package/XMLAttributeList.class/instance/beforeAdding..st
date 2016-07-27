private
beforeAdding: aNode
	observer ifNotNil: [observer addingAttribute: aNode]