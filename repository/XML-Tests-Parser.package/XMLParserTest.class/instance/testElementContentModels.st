tests
testElementContentModels
	| dtd declarations |

	declarations := 
		self elementDeclarationsNamed:
			#('one' 'two' 'three' 'four' 'red' 'blue' 'green' 'orange' 'mon' 'tue' 'wed' 'fri').
	dtd := '<!DOCTYPE root [',
		declarations,
		'<!ELEMENT root (numbers|colors|days)>
		<!ELEMENT numbers (one,two?,three)>
		<!ELEMENT colors (red|blue|green)*>
		<!ELEMENT days (mon+,tue*,wed)>]>'.

	XMLDOMParser parse: dtd, '<root><numbers><one/><two/><three/></numbers></root>'.
	XMLDOMParser parse: dtd, '<root><numbers><one/><three/></numbers></root>'.
	self
		should: [
			XMLDOMParser parse:
				dtd, '<root><numbers><one/><two/><two/><three/></root></numbers>']
		raise: XMLValidationException.

	XMLDOMParser parse: dtd, '<root><colors/></root>'.
	XMLDOMParser parse: dtd, '<root><colors><red/><green/><blue/><red/></colors></root>'.
	self
		should: [XMLDOMParser parse: dtd, '<root><colors><orange/></colors></root>']
		raise: XMLValidationException.

	XMLDOMParser parse: dtd, '<root><days><mon/><mon/><tue/><wed/></days></root>'.
	XMLDOMParser parse: dtd, '<root><days><mon/><wed/></days></root>'.
	self
		should: [XMLDOMParser parse: dtd, '<root><days><tue/></wed></root>']
		raise: XMLValidationException.
	self
		should: [XMLDOMParser parse: dtd, '<root><days><mon/><tue/><fri/></root>']
		raise: XMLValidationException.