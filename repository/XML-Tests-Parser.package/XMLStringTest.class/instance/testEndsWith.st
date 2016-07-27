tests
testEndsWith
	| node |

	node := self nodeClass string: 'test'.
	0 to: node string size - 1 do: [:i | | suffix |
		suffix := node string allButFirst: i.
		self
			assert: (node endsWith: suffix);
			assert: (node endsWith: (self nodeClass string: suffix));
			deny: (node endsWith: (suffix copyWithFirst: $.));
			deny: (node endsWith: (self nodeClass string: (suffix copyWithFirst: $.)))].