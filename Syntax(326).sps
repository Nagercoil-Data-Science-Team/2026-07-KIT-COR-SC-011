* Encoding: UTF-8.
VARIABLE LABELS
Age                 "Age"
Gender              "Gender"
Level_of_Study      "Study Level"
Discipline          "Discipline"
Writing_Frequency   "Writing Frequency"
Q6   "MT Usage"
Q7   "MT Writing Support"
Q8   "MT Idea Generation"
Q9   "MT Dependency"
Q10  "MT Grammar Check"
Q11  "Grammar Errors"
Q12  "Sentence Structure"
Q13  "Grammar Accuracy"
Q14  "Error Correction"
Q15  "Academic Grammar"
Q16  "Vocabulary Learning"
Q17  "Vocabulary Range"
Q18  "Word Meaning"
Q19  "Word Choice"
Q20  "Writing Fluency"
Q21  "Writing Coherence"
Q22  "Paragraph Structure"
Q23  "Writing Quality"
Q24  "Writing Dependence"
Q25  "Without MT Difficulty"
Q26  "Independent Thinking"
Q27  "Writing Confidence"
Q28  "Overall Writing Skills"
Q29  "Writing Performance"
Q30  "Academic Writing Ability".
EXECUTE.


*----------------------------------------------------------.
* VARIABLE LABELS.
*----------------------------------------------------------.

VARIABLE LABELS
Age "Age"
Gender "Gender"
Level_of_Study "Level of Study"
Discipline "Discipline"
Writing_Frequency "Frequency of English Writing Tasks"
Q6 "I frequently use Machine Translation tools for academic writing tasks"
Q7 "I use tools such as Google Translate, DeepL, and Microsoft Translator for writing support"
Q8 "I use Machine Translation tools to generate ideas for writing"
Q9 "I depend on Machine Translation tools to complete academic writing tasks"
Q10 "I use Machine Translation tools to check and correct my English sentences"
Q11 "Machine Translation tools help me identify grammatical errors"
Q12 "Machine Translation tools improve my sentence structure"
Q13 "Machine Translation tools enhance my grammar accuracy"
Q14 "Machine Translation tools help me correct mistakes before submission"
Q15 "Machine Translation tools improve my academic writing grammar"
Q16 "Machine Translation tools help me learn new vocabulary"
Q17 "Machine Translation tools improve my vocabulary range"
Q18 "Machine Translation tools help me understand word meanings"
Q19 "Machine Translation tools help me choose better words in writing"
Q20 "Machine Translation tools improve my writing fluency"
Q21 "Machine Translation tools improve coherence in my writing"
Q22 "Machine Translation tools improve paragraph structure"
Q23 "Machine Translation tools improve overall academic writing quality"
Q24 "I feel dependent on Machine Translation tools for writing"
Q25 "I find it difficult to write without Machine Translation tools"
Q26 "I rely on Machine Translation tools instead of thinking independently"
Q27 "I feel less confident writing without Machine Translation tools"
Q28 "Machine Translation tools improve my overall academic writing skills"
Q29 "Machine Translation tools enhance my writing performance"
Q30 "Machine Translation tools are useful for developing academic writing ability".

*----------------------------------------------------------.
* VALUE LABELS.
*----------------------------------------------------------.

VALUE LABELS
Age
1 "Below 18"
2 "18-20"
3 "21-23"
4 "24-26"
5 "Above 26".

VALUE LABELS
Gender
1 "Male"
2 "Female"
3 "Other".

VALUE LABELS
Level_of_Study
1 "Undergraduate"
2 "Postgraduate".

VALUE LABELS
Discipline
1 "Arts"
2 "Science"
3 "Engineering"
4 "Other".

VALUE LABELS
Writing_Frequency
1 "Daily"
2 "Weekly"
3 "Occasionally"
4 "Rarely".

VALUE LABELS
Q6 TO Q30
1 "Strongly Disagree"
2 "Disagree"
3 "Neutral"
4 "Agree"
5 "Strongly Agree".


VARIABLE LEVEL
Age (ORDINAL)
Gender (NOMINAL)
Level_of_Study (NOMINAL)
Discipline (NOMINAL)
Writing_Frequency (ORDINAL)
Q6 TO Q30 (SCALE).

MISSING VALUES
Age Gender Level_of_Study Discipline Writing_Frequency Q6 TO Q30 ().

EXECUTE.

* Independent Variable.
COMPUTE MT_Usage = MEAN(Q6,Q7,Q8,Q9,Q10).

* Dependent Variables.
COMPUTE H1_Overall      = MEAN(Q28,Q29,Q30).
COMPUTE H2_Grammar      = MEAN(Q11,Q12,Q13,Q14,Q15).
COMPUTE H3_Vocabulary   = MEAN(Q16,Q17,Q18,Q19).
COMPUTE H4_Fluency      = MEAN(Q20,Q21,Q22,Q23).
COMPUTE H5_Independent  = MEAN(Q24,Q25,Q26,Q27).

EXECUTE.
