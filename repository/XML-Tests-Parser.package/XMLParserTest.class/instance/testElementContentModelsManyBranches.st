tests
testElementContentModelsManyBranches
	| dtd names |

	names := (1 to: 25) collect: [:each | 'element', each printString].
	dtd := '<!DOCTYPE root [',
		(self elementDeclarationsNamed: names),
		'<!ELEMENT root (', ($| join: names), ')>]>'.

	names do: [:each |
		self
			shouldnt: [SAXHandler parse: dtd, '<root><', each, '/></root>']
			raise: XMLValidationException].
	self
		should: [
			SAXHandler parse:
				dtd, '<root><element', (names size + 1) printString, '/></root>']
		raise: XMLValidationException.