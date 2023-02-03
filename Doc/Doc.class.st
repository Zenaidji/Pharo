Class {
	#name : #Doc,
	#superclass : #Object,
	#category : #Doc
}

{ #category : #writing }
Doc >> genrateClassDoc: class path: mypath [
	"generate  class's documentaion int the given path location"

	| stream location |
	location := mypath , '/' , class name , '.txt'.
	stream := location asFileReference writeStream.
	self putField:'class name'inFile: stream value: class class name.
	self putField:'Super class'inFile: stream value: class superclass name.
	self putField:'Sub class'inFile: stream value: class subclasses name.

	stream close.

]

{ #category : #'as yet unclassified' }
Doc >> putField: field inFile: stream value: val [
	"write field:value in the given stream "

	"write field:value  in file 'file'"

	| str |
	str := field , ': ' , val.
	stream nextPutAll: str;cr.


]
