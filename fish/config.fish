if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ob="zathura (find ~/Documents/university/Books/ -iname '*.pdf' | fzf -m) &" # Open a textbooks
    alias bo="zathura (find ~/Documents/university/Books/ -iname '*.pdf' | fzf -m) &" # Open a textbooks
    alias op="zathura (find . -iname '*.pdf' | fzf -m) &" # Open some pdfs in cwd 
    alias po="zathura (find . -iname '*.pdf' | fzf -m) &" # Open some pdfs in cwd 
    #    alias oap="zathura (find ~ -iname '*.pdf' | fzf -m) &" # Open any pdfs 

    alias od="cd (find ~ -type d | fzf)" # Open a directory 
    alias do="cd (find ~ -type d | fzf)" # Open a directory 
    alias odu="cd (find ~/Documents/university -type d | fzf)" # Open a directory in for university
    alias dou="cd (find ~/Documents/university -type d | fzf)" # Open a directory in for university
    alias odn="cd (find ~ -type d | fzf) && nvim ." # Open a directory in nvim
    alias don="cd (find ~ -type d | fzf) && nvim ." # Open a directory in nvim

    alias oc="cd (find ~/.config -type d | fzf) && nvim ." # Open a config directory in nvim
    alias co="cd (find ~/.config -type d | fzf) && nvim ." # Open a config directory in nvim

    alias of="nvim (find . -type f | fzf -m)" # Open files
    #    alias ofu="nvim (find ~/Documents/university -type f | fzf -m)" # Open a university files
    alias mvd="mv (find ~/Downloads -type f | fzf -m) ." # Move file to current directory from Downloads

    abbr -a md --position command "mkdir" # "mkdir"
    abbr -a d --position command "clear" # "clear"
    abbr -a k --position command "cd" # "cd"
    abbr -a j --position command "cd -" # "cd -"
    #abbr -a l --position command "cd ../" # "cd .."
    abbr -a s --position command "source" # "source"
    abbr -a n --position command "nvim" # "nvim"

    abbr -a fd --position anywhere "(find ~ -type d -not -path '*/.*' |fzf)" # Find a Directory 
    abbr -a df --position anywhere "(find ~ -type d -not -path '*/.*' |fzf)" # Find a Directory 
    abbr -a fds --position anywhere "(find ~ -type d |fzf)" # Find a directory unsafe 
    abbr -a dfs --position anywhere "(find ~ -type d |fzf)" # Find a directory unsafe 

    abbr -a ff --position anywhere "(find ~ -type f -not -path '*/.*' |fzf -m)" # Find a file 
    abbr -a ffs --position anywhere "(find ~ -type f |fzf -m)" # Find a file unsafe 

    abbr -a ocn --position command "cd ~/.config/nvim && nvim ." # Open nvim config directory in nvim
    abbr -a con --position command "cd ~/.config/nvim && nvim ." # Open nvim config directory in nvim
    abbr -a oct --position command "cd ~/.config/tmux && nvim tmux.conf" # Open tmux config in nvim   
    abbr -a cot --position command "cd ~/.config/tmux && nvim tmux.conf" # Open tmux config in nvim   
    abbr -a ocf --position command "cd ~/.config/fish && nvim config.fish" # Open fish config.fish in nvim  
    abbr -a cof --position command "cd ~/.config/fish && nvim config.fish" # Open fish config.fish in nvim  
    abbr -a ocz --position command "cd ~/.config/zathura && nvim zathurarc" # Open zathura zathurarc in nvim  
    abbr -a coz --position command "cd ~/.config/zathura && nvim zathurarc" # Open zathura zathurarc in nvim  
    abbr -a ocx --position command "cd ~/.config/xremap && nvim config.yml" # Open xremap config in nvim
    abbr -a cox --position command "cd ~/.config/xremap && nvim config.yml" # Open xremap config in nvim
    abbr -a ocb --position command "cd ~/Documents/finance/ && nvim main.beancount" # Open main.beancount in nvim

    abbr -a odl --position command "cd ~/Documents/programming/leetcode"
    abbr -a dol --position command "cd ~/Documents/programming/leetcode"

    abbr -a sff --position command "source ~/.config/fish/config.fish" # Source file fish config
    abbr -a fsf --position command "source ~/.config/fish/config.fish" # File source fish config
end
