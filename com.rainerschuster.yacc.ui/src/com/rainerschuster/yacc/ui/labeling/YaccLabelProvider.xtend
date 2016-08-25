/*
 * generated by Xtext 2.10.0
 */
package com.rainerschuster.yacc.ui.labeling

import com.google.inject.Inject
import org.eclipse.emf.edit.ui.provider.AdapterFactoryLabelProvider
import org.eclipse.xtext.ui.label.DefaultEObjectLabelProvider
import com.rainerschuster.yacc.yacc.Nmno
import com.rainerschuster.yacc.yacc.RWordDefinition
import com.rainerschuster.yacc.yacc.StartDefinition
import com.rainerschuster.yacc.yacc.UnionDefinition
import com.rainerschuster.yacc.yacc.Rule
import com.rainerschuster.yacc.yacc.CodeDefinition

/**
 * Provides labels for EObjects.
 * 
 * See https://www.eclipse.org/Xtext/documentation/304_ide_concepts.html#label-provider
 */
class YaccLabelProvider extends DefaultEObjectLabelProvider {

	@Inject
	new(AdapterFactoryLabelProvider delegate) {
		super(delegate);
	}

	def text(CodeDefinition ele) {
		'<CODE>'
	}

	// Labels and icons can be computed like this:
	def image(StartDefinition ele) {
		'start.png'
	}

	def text(UnionDefinition ele) {
		'<UNION>'
	}

	def image(UnionDefinition ele) {
		'union.png'
	}

//	def text(Nmno ele) {
//		'name: ' + ele.name + ', rword: ' + (ele.eContainer as RWordDefinition).rword
//	}

	def text(RWordDefinition ele) {
		''
	}

	def image(RWordDefinition ele) {
		switch(ele.rword) {
			case TOKEN: 'token.png'
			case LEFT: 'left.png'
			case RIGHT: 'right.png'
			case NONASSOC: 'nonassoc.png'
//			case TYPE: 'type.png'
		}
	}
	def image(Nmno ele) {
		//val RWord rword = (ele.eContainer as RWordDefinition).rword;
		image(ele.eContainer as RWordDefinition)
	}

	def image(Rule ele) {
		'rule.png'
	}

//	def text(Greeting ele) {
//		'A greeting to ' + ele.name
//	}
//
//	def image(Greeting ele) {
//		'Greeting.gif'
//	}
}
