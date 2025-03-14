if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ob="zathura (find ~/Documents/university/Books/ -iname '*.pdf' | fzf -m) &" # Open a textbooks
    alias op="zathura (find . -iname '*.pdf' | fzf -m) &" # Open some pdfs in cwd 
    #    alias oap="zathura (find ~ -iname '*.pdf' | fzf -m) &" # Open any pdfs 

    alias od="cd (find ~ -type d | fzf)" # Open a directory 
    alias odu="cd (find ~/Documents/university -type d | fzf)" # Open a directory in for university
    alias odn="cd (find ~ -type d | fzf) && nvim ." # Open a directory in nvim
    alias of="nvim (find . -type f | fzf -m)" # Open files
    #    alias ofu="nvim (find ~/Documents/university -type f | fzf -m)" # Open a university files

    abbr -a fd --position anywhere "(find ~ -type d -not -path '*/.*' |fzf)" # Find a Directory 
    abbr -a ff --position anywhere "(find ~ -type f -not -path '*/.*' |fzf -m)" # Find a file 
    abbr -a ffs --position anywhere "(find ~ -type f |fzf -m)" # Find a file unsafe 
    abbr -a fds --position anywhere "(find ~ -type d |fzf)" # Find a directory unsafe 
end
