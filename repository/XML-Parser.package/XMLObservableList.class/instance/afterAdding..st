private
afterAdding: anObject
	observer ifNotNil: [observer added: anObject to: self]