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

patterns = {'what':"Select",'which':"Select",
            'many':"Select count",'much':"Select count",
            'who':"Select",
            'number of':"count",
            "students": "students from Student",
            "student": "students from Student",
            "elder": "max(age),",
            "enrolled in": ""}

stopWords = ['the',"is","are","that","this","those","these","the","how","have"]


if __name__ == "__main__":
    
    while True:
        """TOKEN"""
        comment = input()
        comment.lower()
        word_list = re.split("\s",comment)
        query=[]
        
        for i in word_list:
            
            if i in stopWords:
                word_list.remove(i)
        
        indice = 0
        
        
        t = len(patterns)
        
        for j in word_list:
            for i in patterns:
                if j == i:
                    query.append(patterns[i])
                    
        SQL = ""
        for i in query:
            SQL = SQL + " " + i
        print(SQL)
                    
               
              
                
       

        
    

