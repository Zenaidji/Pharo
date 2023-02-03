Class {
	#name : #Doc,
	#superclass : #Object,
	#category : #Doc
}

{ #category : #'as yet unclassified' }
Doc >> putField: field inFile: file value: val [
"write field:value   in file 'file'"

	| str |
	str := field , ' : ' , val.
	file nextPutAll: str.
	str file close
]
