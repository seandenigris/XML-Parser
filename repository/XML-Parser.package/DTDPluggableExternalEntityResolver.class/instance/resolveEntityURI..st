resolving
resolveEntityURI: anXMLURIOrURIString
	^ self resolveEntityWith: [:maxSize | | replacement |
		replacement :=
			self
				entityAtURI: anXMLURIOrURIString
				ifAbsent: [self errorUnresolvableEntityURI: anXMLURIOrURIString].
		(maxSize notNil
			and: [replacement size > maxSize])
			ifTrue: [
				self
					errorMaxEntitySize: maxSize
					exceededByURI: anXMLURIOrURIString].
		replacement]