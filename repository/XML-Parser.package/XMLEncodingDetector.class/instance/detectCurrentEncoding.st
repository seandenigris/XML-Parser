detecting
detectCurrentEncoding
	| handlerTableIndex handlerSelector |

	self canSkipDetection
		ifTrue: [^ self].

	"the index is asciiValue + 1 for null"
	((handlerTableIndex := self peek asciiValue + 1) <= EncodingHandlerTable size
		and: [(handlerSelector := EncodingHandlerTable at: handlerTableIndex) notNil])
		ifTrue: [self perform: handlerSelector].