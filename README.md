fast Settings vim for archlinux 

The first step:

              sudo pacman -S vim 
              
step 2 : Check if .vim file exists  if not create it by mkdir ~/.vim 
 
           git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim         

step 3:

            git clone     https://github.com/rami3877/.vimrc.git && cd .vimrc && mv .vimrc ~/
            
step 4 : 

         vim ~/.vimrc
         :w
         :source %
         :PluginInstall

