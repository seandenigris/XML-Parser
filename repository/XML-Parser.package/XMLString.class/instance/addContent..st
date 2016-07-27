accessing
addContent: aStringOrStringNode
	string :=
		string
			ifNil: [aStringOrStringNode asString]
			ifNotNil: [string, aStringOrStringNode asString]