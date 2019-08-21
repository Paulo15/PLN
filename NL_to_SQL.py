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
        (r'What.\are', "Select"),
        (r"What \s is", "Select"),
        (r"sou","EU SOU"),
        ]



if __name__ == "__main__":
    
    while True:
        comment = input()
        response = comment.lower()
        for i,j in patterns:
            responses = re.compile(patterns)
            response = re.sub(i,j,response)
        print(response.upper())
        
    

