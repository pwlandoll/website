# pigLatin.boo

/*
* 
* Peter Landoll
* CS270
* Reads in text file, and translates all translatable words into Pig Latin
* 
*/

import System.IO
import System.Text.RegularExpressions

def readInFile():
	# readInFile() prompts the user for a file name and returns the given file's contents

	returnString as string
	# Prompt user for file name
	print "Enter the name of the file you would like translated:"
	fileName = gets()
	# reads the contents of the given file, returns as string
	returnString = File.ReadAllText(fileName)
	return returnString

def firstVowel(input as string):
	# firstVowel() tests if the first letter is a,e,i,o,u or where the first occurence of a,e,i,o,u,y is 

	# index keeps track of where the first vowel in the word is
	index = -1
	# checks if the first word is a non-'y' vowel
	if input[0] in "aeiou":
		index = 0
		return index
	# iterates through the word and finds the first occurrence of any vowel
	for i in range(1, len(input)):
		if input[i] in "aeiouy":
			index = i
			break
	return index

def pig(input as string, vowelIndex as int):
	# pig() is the function that translates a word according to the rules of Pig Latin
	# parameter input is the word to be translated into Pig Latin
	# parameter vowelIndex is the location of the first vowel in the word

	ending as string
	if vowelIndex == 0:
		ending = "way"
	else:
		ending = "ay"
	return input[vowelIndex:] + input[:vowelIndex] + ending

def writeOutFile(input as string):
	# writeOutFile() prompts the userfor a file name and writes out the translated contents of the original file
	# parameter input is the translated contents of the original file

	# prompt the user for file name
	print "Enter the name of the output file:"
	filename = gets()
	# writes the input to the given file
	File.WriteAllText(filename, input)


def main():
	# main() gets file input, translates it, and writes out the translated input

	# Read in file contents, translate each word, write to new file
	contents = readInFile()
	# splitting the contents string makes translating each word easier
	wordList = /\s/.Split(contents)
	for word in wordList:
		vowelIndex = firstVowel(word)
		# checks if the word has a vowel, and is only alphabetic characters
		if vowelIndex != -1 and word =~ /[A-z]+/:
			# replaces the word in the contents string with the translated word
			contents = Regex(word).Replace(contents, pig(word, vowelIndex))
	writeOutFile(contents)

main()