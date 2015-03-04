'''This program reads an entire file and counts the occurances of each word. Each word is added to a dictionary
as a key and the number of occurances for each word is then added as the value for that key'''

book = open('book1.txt')

wordcounter = {}  #Creates empty dictionary to be populated by each word in the book.

def counter(lines):
  for word in line.split():
    word = word.lower()     #ensures that words starting with a capital are not stored as seperate keys
    if word[-1:].isalpha() == False:  #This attempts to subtract the puncuation from the end of each sentance
      word = word[:-1]
      print (word)
    if word in wordcounter.keys():  
      wordcounter[word] += 1
    else:
      wordcounter[word] = 1

for line in book:
  counter(line)

print (wordcounter)
