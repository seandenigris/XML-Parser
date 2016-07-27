tests
testBeginsWith
	| node |

	node := self nodeClass string: 'test'.
	0 to: node string size - 1 do: [:i | | prefix |
		prefix := node string allButLast: i.
		self
			assert: (node beginsWith: prefix);
			assert: (node beginsWith: (self nodeClass string: prefix));
			deny: (node beginsWith: (prefix copyWith: $.));
			deny: (node beginsWith: (self nodeClass string: (prefix copyWith: $.)))].