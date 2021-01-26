# Coding_tips

https://stackoverflow.com/questions/363111/search-for-selection-in-vim

Answer
Yank the text you want to search for
q/p
Enter
Explanation

q/ works similarly to vanilla search / except you're in command mode so p actually does "paste" instead of typing the character p. So the above will copy the text you're searching for and paste it into a search.

For more details type :help q/

