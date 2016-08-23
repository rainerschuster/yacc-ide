/*
 * generated by Xtext 2.10.0
 */
package com.rainerschuster.yacc.tests

import com.google.inject.Inject
import com.rainerschuster.yacc.yacc.Specification
import org.eclipse.xtext.junit4.InjectWith
import org.eclipse.xtext.junit4.XtextRunner
import org.eclipse.xtext.junit4.util.ParseHelper
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(XtextRunner)
@InjectWith(YaccInjectorProvider)
class YaccParsingTest{

	@Inject
	ParseHelper<Specification> parseHelper

	@Test 
	def void loadModel() {
		val result = parseHelper.parse('''
			Hello Xtext!
		''')
		Assert.assertNotNull(result)
	}

}
