if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ob="zathura (find ~/Documents/University/Books/ -iname '*.pdf' | fzf -m) &" #Open a textbooks
    alias op="zathura (find ~ -iname '*.pdf' | fzf -m) &" # Open some pdfs 
    alias fd="cd (find ~ -type d | fzf)" # Find a directory
    alias fdu="cd (find ~/Documents/University -type d | fzf)" # Find a directory in for university
    alias of="nvim (find ~ -type f | fzf -m)" # Open a files
    alias ofu="nvim (find ~/Documents/University -type f | fzf -m)" # Open a university files
    abbr tod= s

    #    function move_with_fzf
    #        if test -z "$argv"
    #            echo "Please provide a file to move."
    #            return 1
    #        end
    #
    #        set file_to_move $argv[1]
    #        set destination (find ~ -type d | fzf)
    #
    #        if test -n "$destination"
    #            mv "$file_to_move" "$destination"
    #            echo "Moved $file_to_move to $destination"
    #        else
    #            echo "No destination selected."
    #        end
    #    end
end
