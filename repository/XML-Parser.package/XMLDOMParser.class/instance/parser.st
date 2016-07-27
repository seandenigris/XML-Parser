parsing
parser
	| parser |

	parser := super parser.
	self topNode
		ifNotNil: [:root |
			parser initialContext: root innerXMLContext.

			self nodeStack do: [:each |
				each isElement
					ifTrue: [
						self
							startInnerXMLElement: each
							forParser: parser]]].

	^ parser.