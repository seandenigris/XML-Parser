tests
testHasDoctypeDefinition
	| document |

	document := self nodeClass new.
	self deny: document hasDoctypeDefinition.
	document doctypeDefinition: DTDDoctypeDefinition new.
	self assert: document hasDoctypeDefinition.
	document doctypeDefinition: nil.
	self deny: document hasDoctypeDefinition.