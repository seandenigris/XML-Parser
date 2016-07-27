private
writeAttributes
	attributes ifNotNil: [
		self
			writeKeysAndValuesFrom: self attributes
			with: [:attrName :attrValue |
				self writer
					writeName: attrName value: attrValue]]