tests
testParsingNonHTMLSections
	| document |

	document := HTMLParser parse:
		'<head><Title><b>"title</b></TITLE><SCRIPT>',
		'1 < 2; 3 > 2; document.write("</Script>");</Script>
		<Style>//"</STYLE><HEAD>'.
	self
		assert: (document findElementNamed: 'title') contentString = '<b>"title</b>';
		assert: (document findElementNamed: 'script') contentString =
			'1 < 2; 3 > 2; document.write("</Script>");';
		assert: (document findElementNamed: 'style') contentString = '//"'.