# -*- coding: utf-8 -*-
"""
Created on Wed Aug 21 01:06:00 2019

@author: Paulo
"""

# -*- coding: utf-8 -*-
"""
Created on Tue Jul  9 20:08:54 2019

@author: Paulo
"""

import re

patterns = [
        (r'What', "Select"),
        (r'Which', "Select"),
        (r'Who', "Select"),
        (r'How', "Select"),
        (r"sou","EU SOU"),
        ]

stopWords = ["the","is","are","that","this","those","these"]


if __name__ == "__main__":
    
    while True:
        """TOKEN"""
        comment = input()
        word_list = re.split("\s",comment)
        
        for i in word_list:
            
            if i in stopWords:
                word_list.remove(i)
        
        
        
        print(word_list)

        
    

