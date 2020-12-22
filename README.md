fast Settings vim for archlinux 

The first step:

              sudo pacman -S vim  ctags
              
step 2 : Check if .vim file exists  if not create it by mkdir ~/.vim 
 
          curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim     

step 3:

            git clone     https://github.com/rami3877/.vimrc.git && cd .vimrc && mv .vimrc ~/
            
step 4 : 

         vim ~/.vimrc
         :source %
         :PluginInstall
# for change the format output of lexima.vim :
          vim ~/.vim/plugged/lexima.vim/autoload/lexima.vim
          :39
# create a file to save histories :
          mkdir ~/.vim/undo
# create a file to save Folding Text :
          mkdir ~/.vim/view
