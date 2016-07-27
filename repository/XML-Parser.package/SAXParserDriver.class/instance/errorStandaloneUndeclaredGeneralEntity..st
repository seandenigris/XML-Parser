private
errorStandaloneUndeclaredGeneralEntity: aName
	XMLWellFormednessException
		formatSignal:
			'Undeclared general entity reference &{1}; in standalone document'
		with: aName