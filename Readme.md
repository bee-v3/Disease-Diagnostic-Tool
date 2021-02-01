Included files
--------------
diagnose.pl - The main program.  
disease.pl - Disease information consulted by diagnose.pl  
/doc/index.html - Main documentation file.  
/doc/diagnose.html - Documentation of diagnose.pl.  
/doc/disease.html - Documentation of disease.pl.  


Readme
------
This program was developed using SWI-Prolog version 8.1.0. To begin, please consult 'diagnose.pl' through the command "[diagnose]."  
Type "start." to begin the diagnosis. Please note that while searching is not case-sensitive, the user must omit any underscores in their input. For example: a disease in 'disease.pl' with muscle_ache as a symptom will only be matched with user input "muscle ache" (with any combination of upper and lowercase letters).


Design
------
1. Matching & Searching
Information on diseases is stored in disease.pl. Each disease is described in locale/2, symptom/2, test/2, and treatment/2. 
To match information gathered from the prolog discussion board on blackboard, diseases are only registered as possible choices if **all** of a disease's symptoms are a subset of the list of symptoms the user has entered. Conversely, a disease is registered as a possible choice if any of its locales are a subset of the list of locales the user has entered.

2. User input
The user is offered to input a list of symptoms, locations they've visited, and the results of diagnostic tests. To match the format given in the prolog wiki example, user input is made lowercase and whitespaces are replaced by underscores before being used for searching.

Program Example
---------------
?- [diagnose].
true.

?- start.

Welcome to the Disease Diagnostic Center.  
Please enter symptoms now, enter Done when finished  
|: vomiting  
|: confusion  
|: headache  
|: fever  
|: muscle ache  
|: skin rash  
|: sudden fever  
|: Done  

Please list locations the patient has visited within the last 6 months.  
Please enter Done when finished.  
|: south africa  
|: europe  
|: north America  
|: Done  
  
Possible diseases:  
dengue  
ehrlichiosis  
  
Possible tests:  
pcr  
viral_antigen_detection  
blood_test  
liver_test  
  
Enter test results. Type a space where underscores appear in the possible tests list.  
Enter 'Done' to finish  
Enter test name. Type Done if finished: PCR  
Enter test result as Positive or Negative: positive  
Enter test name. Type Done if finished: Blood Test  
Enter test result as Positive or Negative: Positive  
Enter test name. Type Done if finished: Liver test  
Enter test result as Positive or Negative: negative  
Enter test name. Type Done if finished: Done  
  
Your patient has:  
dengue  
ehrlichiosis  
  
Recommended treatments for   
dengue  
acetaminophen  
blood_transfusion  
  
Recommended treatments for   
ehrlichiosis  
doxycycline  
  
Diagnosis finished.
