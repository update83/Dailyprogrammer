def main():
    input1 = int(input('Enter: '))
    input2 = int(input('Enter: '))
    
    input1 = bin(input1)
    input2 = bin(input2)
    
    if len(input1) < 34:  #Requires a count of 34 due to the leading 0b identify the value as binary
        input1_bin = ('0' * (34 - len(input1) )) + input1[2:]
    elif len(input1) == 34: #This is in place to strip the 0b off a value that is already 32bits long
        input1_bin = input1[2:]
    else:
        print ('To large of a number')
        exit()
    
    if len(input2) < 34:
        input2_bin = ('0' * (34 - len(input2) )) + input2[2:]
    elif len(input2) == 34:
        input2_bin = input2[2:]
        print (1234)
    else:
        print ('To large of a number')
        exit()
        
    result = 0
    for x, y in zip(input1_bin, input2_bin):  
        if x == y:
            result += 1
   
    opposite1 = ''
    for x in input1[2:]:
        if x == '0':
            opposite1 += '1'
        else:
            opposite1 += '0'
            
    opposite2 = ''
    for x in input2[2:]:
        if x == '0':
            opposite2 += '1'
        else:
            opposite2 += '0'
    
    print ('{} has a match percentage of {}% with {}' .format(int(input1,2), result / 32 * 100, int(input2,2)))
    print ('{} should avoid {}' .format(int(input1,2), int(opposite1,2)))
    print ('{} should avoid {}' .format(int(input2,2), int(opposite2,2)))   

if __name__ == '__main__':main()
