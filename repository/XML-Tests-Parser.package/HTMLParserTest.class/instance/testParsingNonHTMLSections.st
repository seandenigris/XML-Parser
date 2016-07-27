tests
testParsingNonHTMLSections
	| document |

	document := HTMLParser parse:
		'<head><title><b>"title</b></TITLE><SCRIPT>',
		'1 < 2; 3 > 2; document.write("</script>");</script>
		<style>//"</style><HEAD>'.
	self
		assert: (document findElementNamed: 'title') contentString = '<b>"title</b>';
		assert: (document findElementNamed: 'script') contentString =
			'1 < 2; 3 > 2; document.write("</script>");';
		assert: (document findElementNamed: 'style') contentString = '//"'.