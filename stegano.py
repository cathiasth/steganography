from PIL import Image
import numpy

image_path = 'aladdin.jpeg'

def lsb_1(image_path, message):
    image_object = Image.open('/Users/heleny/Documents/HETIC/RAN/steganography/aladdin.jpeg')
    image_array = numpy.array(image_object)

    image_array -= image_array % 2 #passage de tous les pixels en valeur pair
    
    
    binary_message = [int(bin_number) for bin_number in ''.join(format(ord(i), '08b') for i in message)] #convert message to binary

    number_rows, number_cols, number_color = image_array.shape
    index_binary_message = 0

    for index_row in range(0, number_rows):
        for index_col in range(0, number_cols):
            for index_color in range(0,number_color):
            # rasteer scan

                if index_binary_message < len(binary_message):
                    image_array[index_row,index_col, index_color] =+ binary_message[index_binary_message]
                else :
                    break
                index_binary_message += 1

lsb_1(image_path, "Coucou les loulouss")

#  for index_row in range(0, number_rows):
 #       for index_col in range(0, number_cols):
            
            # rasteer scan

   #         if index_row * number_cols + index_col < len(binary_message):
  #              image_array[index_row,index_col] =+ binary_message[index_row * number_cols + index_col]
    #        else :
    #            break