# gitdots
manage ~/.dotfiles with git

Based on some stuff by [StreakyCobra](https://news.ycombinator.com/item?id=11071754) and  [Nicola Paolucci](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)

So far:

	git init --bare $HOME/.gitdots
	alias gitdots='/usr/bin/git --git-dir=$HOME/.gitdots/ --work-tree=$HOME'
	gitdots config --local status.showUntrackedFiles no
	gitdots remote add origin https://github.com/quaternian/gitdots.git
	
	
