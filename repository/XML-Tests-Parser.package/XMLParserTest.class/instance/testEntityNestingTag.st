tests
testEntityNestingTag
	#('<!DOCTYPE test [
				<!ENTITY partial "<">
			]><test>&partial;a name=''value''></a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<">
			]><test>&partial;a name=''value''/></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a">
			]><test>&partial;name=''value''></a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a">
			]><test>&partial;name=''value''/></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name">
			]><test>&partial;=''value''></a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name">
			]><test>&partial;=''value''/></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=">
			]><test>&partial;''value''></a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=">
			]><test>&partial;''value''/></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=''">
			]><test>&partial;value''></a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=''">
			]><test>&partial;value''/></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=''value">
			]><test>&partial;''></a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=''value">
			]><test>&partial;''/></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=''value''">
			]><test>&partial;></a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=''value''">
			]><test>&partial;/></test>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException].

	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE test [
						<!ENTITY total1 "<a name=''value''></a>">
						<!ENTITY total2 "<a name=''value''/>">
					]><test>&total1;&total2;</test>']
		raise: XMLWellFormednessException.