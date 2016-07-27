tests
test030StringNode
	| string raw escaped |

	string := XMLStringNode new.
	raw := 'test&<>"'.
	escaped := 'test&amp;&lt;&gt;&quot;'.
	self
		assert: (string isText & string isTagOrText);
		assertString: string is: '' printed: '';
		assertString: (string string: raw) is: raw printed: escaped;
		assertString: (XMLStringNode string: string) is: raw printed: escaped;
		assertString: (string addContent: raw) is: raw, raw printed: escaped, escaped.
	self
		assertString: (string addContent: (XMLStringNode string: raw))
		is: raw, raw, raw
		printed: escaped, escaped, escaped.