# JournalRebuttal_LaTeX
A LaTeX class to format replies to the reviewers of journal paper submissions


The class provides the following commands and environments:

1. `\journal{name}` Sets the name of the journal to print in the title
2. `\printjournal` Prints the name of thr journal
3. `\manuscriptid{id}` Sets the manuscript ID provided for the submission
4. `\printmanuscriptid` Prints the manuscript ID
5. `\nextreviewer` Increments the reviewer counter by one.
6. `\begin{revcomment}...\end{revcomment}` Increments the comment counter by one and prints the contents of the environment with formatting.  Automatically assigns a label for cross-referencing using the reviewer number and comment number.  
7. `\begin{response}...\end{response}` Prints the contents of the environment formatted as a response to the previous revcomment item.
8. `\ColorNote{color}{initials}{note}` Creates a colored note prefixed with the given initials.
9. `\makerule` Creates a horizontal rule.

Example usage is provided in [journalrebuttal.tex](journalrebuttal.tex)
