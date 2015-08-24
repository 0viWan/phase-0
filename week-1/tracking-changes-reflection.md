## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?
- What is a commit?
- What are the best practices for commit messages?
- What does the HEAD^ argument mean?
- What are the 3 stages of a git change and how do you move a file from one stage to the other?
- Write a handy cheatsheet of the commands you need to commit your changes?
- What is a pull request and how do you create and merge one?
- Why are pull requests preferred when working with teams?

- Tracking and adding changes make developers' lives easier by showing the user and anyone that may want to access their work an accountability for what they have done and the changes that they have built off of.  In this way you can have a clear framework for one's process and refer back to what was done from one iteration to the next; this further makes it easier when you are working on large projects together and want to see what who/how/why collaborations were made.  

-A commit is at its essence a recording or snapshot of where your code is at a particular time.  You can make as many commits as possible and use them as reference points for your process at any time in the future.  When you write in version control such as git, each atleration to your code is tracked automatically.  Collectively those changes can be submitted under unified 'commit' as when you merge your code from the git to GitHub using pull requests.

-A model commit message is first concise and written in the 'present imperative' tense.  It also tends to be capitalized and if necessary a more detailed explanatory text proceeding it not exceeding a couple of scentences.  Alternatives to paragraphing the explanation could be using bullet points, hypens, or asterisk followed by blank lines inbetween.  An example of an effecdtive and brief commit message could be: "Combine paragraphs".

-The HEAD^ argument refers to the order of the commit. For example this could apply when untracking changes.  Whenever you make a change to a file it is tracked in version control.  You can only push changes that have been committed. 'git add' tracks what will be included to be committed.  Further when you 'git commit' something you move it from being 'untracked' to 'staged to be committed'.  In order to undo this and thereby unstaging the changes you would use 'git reset HEAD'.  HEAD is the current commit you are on, while HEAD^ is the last commit, HEAD3 is the next one after that and so on.  

-The first step in a git change is "Tracking Changes".  This involves using 'git add +{file name}' to signal what is going from untracked to staged to be committed. Alternatively you can unstage a commit by using the 'git reset HEAD' command.  Then the next stage is "Making Changes".  For example you may have a text file to which you added a new paragraph.  After saving the changes made it said file, you can check a 'git status' and see that you have changes in effect that may have been added but not yet committed. Commits that are ready to be submitted can easily be done using 'git commit -m "Write changes here in brief message".  The message provided should be a concise rundown of the general purpose of that collective commit. The final stage is "Pushing Changes" and involves syncing up your changes into a live version on Github and happens to be the most involved process in the lot. First you have to make sure do not have different versions of your repo locally and remotely before you can push the changes to the master fork of GitHub. Type in 'git co master' first and then 'git pull': this fetches changes from the remote repo and merges them if this hadn't been done prior.  The next step is to merge changes from the master branch into the feature branch. Type in 'git co feature-branch-name'. Then enter 'git merge master' to merge the changes from your master to your feature branch.  After this is where you will push your feature branch to your remote fork using 'git push origin feature-branch-name', thereby moving the changes made from your local git copy to the remote repo on GitHub. Finally the last step of this process now that the repos are in order is to make the final pull request, merging the changes into the master branch on GitHub.  Once all the changes are merged you can delete old branches on GitHub and the old feature branch in your terminal using 'git branch -d feature-branch-name' 

- git add {file name}
  git reset HEAD
  git status
  git commit -m "Write change here"
  git co master
  git pull
  git co feature-branch-name
  git merge master
  git push origin feature-branch-name
  git branch -d feature-branch-name

 -A pull request is how you merge all the commits (changes) made locally in the feature branches of git, into the remote master branch, live on Github.  Once you are located on your feature branch with you commit staged to be submitted, you would go to Github and click on the designated 'pull request' button.  This will show you summary of the files that were changed and also display which branch you are making the pull request on (this may have to be tinkered with in order to adhere to the correct order of operations for merging the forks). Once this is correct you can hit the 'create pull request button' followed by the 'merge pull request'. You can then see the consolidation of your work in the master branch and delete any extraneous branches that are no longer needed.
 -This process is preferred when working with teams because it seamlessly provides accountability for who provided what to the project without interferring with the content of the master branch.
