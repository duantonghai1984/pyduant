

if __name__ == '__main__':
    result=''
    file_object = open('E:\\invoice.csv', 'rb')
    for line in file_object.readlines( ):
        result=result+"'"+line.split(',')[0].strip()+"'"+","
        
    print(result)