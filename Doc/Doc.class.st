"generate documentaion for a given class"
Class {

	#name : #Doc,
	#superclass : #Object,
	#category : #Doc
}

{ #category : #writing }
Doc >> genrateClassDoc: class path: mypath [
	"generate  class's documentaion int the given path location"

	| stream location methods instvar classvar |
	location := mypath , '/' , class name , '.txt'.
	stream := location asFileReference writeStream.
	self putField:'class name'inFile: stream value: class class name.
	self putField:'Super class'inFile: stream value: class superclass name.
	self putField:'Sub class'inFile: stream value: class subclasses.
	methods := class methods collect: [ :method | method selector asString ].
	instvar:= class instVarNames do: [ :var |  var asString . self putField:'instvar'inFile:stream value:var].
	classvar:= class classVariables do: [ :var |  var asString . self putField:'classVariables'inFile:stream value:var].
	methods do:[:m|self putField:'method'inFile:stream value:m ].
	stream close.
	
	
	










]

{ #category : #'as yet unclassified' }
Doc >> putField: field inFile: stream value: val [
	"write field:value in the given stream "
	| str |
	str := field , ': ' , val.
	stream nextPutAll: str ;cr.


]
