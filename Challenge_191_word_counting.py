book = open('book1.txt')

wordcounter = {}

def counter(lines):
  for word in line.split():
    word = word.lower()
    if word[-1:].isalpha() == False:
      word = word[:-1]
      print (word)
    if word in wordcounter.keys():
      wordcounter[word] += 1
    else:
      wordcounter[word] = 1

for line in book:
  counter(line)

print (wordcounter)
