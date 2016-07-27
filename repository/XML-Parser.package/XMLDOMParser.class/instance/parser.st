parsing
parser
	| parser |

	parser := super parser.
	self topNode
		ifNotNil: [:root |
			parser context: root innerXMLContext.
			self nodeStack do: [:each |
				each isElement
					ifTrue: [
						self
							startInnerXMLElement: each
							forParser: parser]]].
	^ parser.