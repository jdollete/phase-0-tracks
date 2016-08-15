# Git Definitions - Shout Out

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
    * Version control is a system that records any updates to the file over a certain time period where the user can later pull earlier versions of the file. It is useful for comparing current work to previous versions of the work, and also reverting back to a safe point if current version does not work.
* What is a branch and why would you use one?
    * A branch is an independent copy of the master file where a user can make updates without touching the master. You would use a branch if you decide to add new features or fix a bug to ensure that unstable code is never committed to your master file.
* What is a commit? What makes a good commit message?
    * The command `git commit` records all the changes to your repository. A good commit message be concise. A source online states that a properly formed git commit message should be able to complete this statement `If applied, this commit will _your subject line here_.`
* What is a merge conflict?
    * A merge conflict occurs when you attempt to merge two branches that were updated on the same part of the same file. A merge conflict begins with `<<<<<<<`, ends with `>>>>>>>` and the conflicting blocks are divided by `=======`. You must resolve the conflict by editing the code to the users intent. Then committing to those changes to your git.