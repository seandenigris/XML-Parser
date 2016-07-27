class initialization
generateHTMLEntityPage
	"self generateHTMLEntityPage"
	| namedEntities json fields entityName codepoint |

	namedEntities := OrderedCollection new.
	json := 'http://www.w3.org/TR/html5/entities.json' asXMLURI get.
	[json atEnd]
		whileFalse: [
			fields := $: split: (json upToAny: String crlf).
			fields size > 1
				ifTrue: [
					entityName := fields first copyWithoutAll: '&;"{', Character separators.
					codepoint := (fields third copyAfter: $[) copyUpTo: $].
					namedEntities addLast: entityName -> codepoint]].

	self compileHTMLEntityPageWithNamedEntities: namedEntities.