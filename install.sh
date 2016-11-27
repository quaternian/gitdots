## This should get everything up and running..

git clone --bare https://github.com/quaternian/gitdots.git $HOME/.gitdots
function gitdots {
   /usr/bin/git --git-dir=$HOME/.gitdots/ --work-tree=$HOME $@
}
mkdir -p .gitdots-backup
gitdots checkout
if [ $? = 0 ]; then
  echo "Checked out gitdots.";
  else
    echo "Backing up pre-existing dot files.";
    gitwrap checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
gitdots checkout
gitdots config status.showUntrackedFiles no
