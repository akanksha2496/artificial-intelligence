# -*- coding: utf-8 -*-
"""AI_A4_Akanksha_Dewangan_MT19049.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1p5wEu_NyKA_mWeQHsC6TJAlEOF8OnUjw

Liberaries used:
"""

import nltk
nltk.download('punkt')

import nltk
from nltk.tokenize import word_tokenize
from nltk.stem import PorterStemmer
import re

"""Preprocessing:"""

def take_inputs(que):
  inplist2 = []
  inp2 = input(que)
  inp2 = re.sub(r'[^\w\s]', '', inp2) 
  tok2 = word_tokenize(inp2)
  tok2=[token.lower() for token in tok2]
  ps = PorterStemmer()
  for wod in tok2:
      stem1 = ps.stem(wod)
      inplist2.append(stem1)
  return inplist2

def take_digit(str):
  inp2 = input(str)
  return [int(s) for s in inp2.split() if s.isdigit()]

"""Question answer interface:"""

f = open("output.txt", 'w')

inp=take_inputs("would you like to do job or heigher_studies? 1)not_heigher_studies 2)heigher_studies ")


if "not_heigher_studi" in inp:
    f.write("heigher_studies(no).\n")
    f.write("give_which_eaxm(not_intrested).\n")
    inp=take_inputs("Are you intreseted in buisness?? 1)yes 2)no ")
    if "no" in inp:
         f.write("buisness(no).\n")            
         inp=take_inputs("Are you intrested in coding ?' 1)yes 2)no ")
         if "ye" in inp:
            f.write("code(yes).\n")         
            inp=take_inputs("did you have problem solving approach?? 1)yes 2)no ")
            if "ye" in inp:
              f.write("problem_solving(yes).\n")
            else:
              f.write("problem_solving(no).\n") 
            inp=take_inputs("Are you good in aptitude?? 1)yes 2)no ")
            if "ye" in inp:
                f.write("aptitude(yes).\n")
            else:
                f.write("aptitude(no).\n")
            inp=take_inputs("'Are you a logical thinker?' 1)yes 2)no ")
            if "ye" in inp:
              f.write("logical_thinking(yes).\n") 
            else:
              f.write("logical_thinking(no).\n")
            inp=take_inputs("'Hows your management skill , can you able to manage and organise the things properly ?' 1)yes 2)no ")
            if "ye" in inp:
              f.write("management_skill(yes).\n") 
            else:
              f.write("management_skill(no).\n") 
            inp=take_inputs("Whats your financial condition ?' 1)weak 2)strong 3)medium ")
            if "weak" in inp:
              f.write("financial(weak).\n")
            elif "medium" in inp:
              f.write("financial(medium).\n")
            else:
              f.write("financial(strong).\n")
            inp=take_inputs("Are you project oriented ?' 1)yes 2)no ")
            if "ye" in inp:
                f.write("project_oriented(yes).\n")
            else:
                f.write("project_oriented(no).\n")
         else:
            f.write("code(no).\n")
            inp=take_inputs("Are you phyically fit and have kind a sports-man spirit ? ?' 1)very_strong 2)fit ")

            if "very_strong" in inp:
              f.write("physical(very_strong).\n")
              inp=take_inputs("'Would you like to help common people and feel good to serve them as your duty?' 1)yes 2)no ")
              if "ye" in inp:
                f.write("serving_people(yes).\n")
              else:
                f.write(" serving_people(no).\n")
              inp=take_inputs("Whats your financial condition ?' 1)weak 2)strong 3)medium ")
              if "weak" in inp:
                f.write("financial(weak).\n")
              elif "medium" in inp:
                f.write("financial(medium).\n")
              else:
                f.write("financial(strong).\n") 
              inp=take_inputs("Can you able to adapt the changes around you in terms of cultures and peoples ? 1)yes 2)no ")
              if "ye" in inp:
                f.write("adaptibility(yes).\n")
              else:
                f.write("adaptibility(no).\n")          
              inp=take_inputs("did you have leadership quality?' 1)yes 2)no ")
              if "ye" in inp:
                f.write("leadership(yes).\n")
              else:
                f.write("leadership(no).\n")
            else:
              f.write("physical(fit).\n")
              inp=take_inputs("did you have problem solving approach?? 1)yes 2)no ")
              if "ye" in inp:
                f.write("problem_solving(yes).\n")
              else:
                f.write("problem_solving(no).\n")
              inp=take_inputs("Are you good in aptitude?? 1)yes 2)no ")
              if "ye" in inp:
                f.write("aptitude(yes).\n")
              else:
                f.write("aptitude(no).\n")
              inp=take_inputs("'Are you a logical thinker?' 1)yes 2)no ")
              if "ye" in inp:
                f.write("logical_thinking(yes).\n") 
              else:
                f.write("logical_thinking(no).\n")
              inp=take_inputs("Are you project oriented ?' 1)yes 2)no ")
              if "ye" in inp:
                f.write("project_oriented(yes).\n")
              else:
                f.write("project_oriented(no).\n")
              inp=take_inputs("'Would you like to help common people and feel good to serve them as your duty?' 1)yes 2)no ")
              if "ye" in inp:
                f.write("serving_people(yes).\n")
              else:
                f.write(" serving_people(no).\n")
              inp=take_inputs("Whats your financial condition ?' 1)weak 2)strong 3)medium ")
              if "weak" in inp:
                f.write("financial(weak).\n")
              elif "medium" in inp:
                f.write("financial(medium).\n")
              else:
                f.write("financial(strong).\n") 
              inp=take_inputs("'Hows your management skill , can you able to manage and organise the things properly ?' 1)yes 2)no ")
              if "ye" in inp:
                f.write("management_skill(yes).\n") 
              else:
                f.write("management_skill(no).\n") 
              
    else:
         f.write("buisness(yes).\n")  
         f.write("give_which_eaxm(not_intrested).\n") 
         inp=take_inputs("Whats your financial condition ?' 1)weak 2)strong 3)medium ")
         if "weak" in inp:
            f.write("financial(weak).\n")
         elif "medium" in inp:
            f.write("financial(medium).\n")
         else:
            f.write("financial(strong).\n")
         inp=take_inputs("Did you like to inteact with peoples ?(yes/no) ")
         if "ye" in inp:
            f.write("intreact(yes).\n")
         else:
            f.write("intreact(no).\n")
         inp=take_inputs("Can you able to think of an innovation or having thought of new ideas  ?(can/can't)")
         if ("can" in inp) and ("ye" in inp):
              f.write("idea(can).\n")
         else:
              f.write("idea(can_not).\n")
         inp=take_inputs("did you have leadership quality?(yes/no) ")
         if "ye" in inp:
              f.write("leadership(yes).\n")
         else:
              f.write("leadership(no).\n")
         inp=take_inputs("Are you mentally strong to take risk ?(can/can't) ")
         if ("can" in inp) and ("ye" in inp):
              f.write("risk(can).\n")
         else:
              f.write("risk(can_not).\n")

          

if "heigher_studi" in inp:
         f.write("heigher_studies(yes).\n")
         inp=take_inputs("did you have problem solving approach?(yes/no)")
         if "ye" in inp:
          f.write("problem_solving(yes).\n")
         else:
          f.write("problem_solving(no).\n")
         inp=take_digit("What is your B.tech percentage in numbers? ")
         print(inp)
         if inp[0]>=80:
          f.write("marks(yes).\n")
         else:
          f.write("marks(no).\n") 
         inp=take_inputs("Are you good in aptitude?(yes/no)")
         if "ye" in inp:
              f.write("aptitude(yes).\n")
         else:
              f.write("aptitude(no).\n")
         inp=take_inputs("Are you a logical thinker?(yes/no)")
         if "ye" in inp:
            f.write("logical_thinking(yes).\n") 
         else:
            f.write("logical_thinking(no).\n")
         inp=take_inputs("Are you intrested in research?(yes/no)")
         if "ye" in inp:
            f.write("research(yes).\n") 
         else:
            f.write("research(no).\n") 
         inp=take_inputs("Whats your financial condition ?(weak/strong/medium)")
         if "weak" in inp:
            f.write("financial(weak).\n")
         elif "medium" in inp:
            f.write("financial(medium).\n")
         else:
            f.write("financial(strong).\n")
         inp=take_inputs("Are you intrested in coding ?(yes/no)")
         if "ye" in inp:
            f.write("code(yes).\n")
         else:
            f.write("code(no).\n")
         inp=take_inputs("Are you project oriented ?(yes/no)")
         if "ye" in inp:
              f.write("project_oriented(yes).\n")
         else:
              f.write("project_oriented(no).\n")
         inp=take_inputs("Which exam do you like to give ?(CAT/GATE/GRE)")
         if "cat" in inp:
              f.write("give_which_eaxm(cat).\n")
         elif "gate" in inp:
              f.write("give_which_eaxm(gate).\n") 
         elif "gre" in inp:
              f.write("give_which_eaxm(gre).\n") 



inp=take_inputs("would you like to make your hobby as a carrier?(yes/no)")

if "ye" in inp:

  f.write("hobbies(yes).\n")
else:
  f.write("hobbies(no).\n") 
                        

f.close()

