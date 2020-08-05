set -gx GOPATH "/Users/senthil/go"
set fish_color_param brgreen --italics
set fish_color_command brred --bold
set fish_color_autosuggestion bryellow --italics
#set -gx GOPATH $GOPATH "/Users/senthil/programming"
set -gx GOROOT "/usr/local/go"
set -gx PATH $PATH $GOPATH/bin
set -gx PATH $PATH $GOROOT/bin
set -gx PATH $PATH /Users/senthil/go/src/github.com/hyperledger/fabric/build/bin
set -gx PATH $PATH /Library/TeX/texbin
set -gx FABRIC_CFG_PATH /Users/senthil/go/src/github.com/hyperledger/fabric/sampleconfig
set -gx CSCOPE_DB /Users/senthil/go/src/github.com/hyperledger/fabric/cscope.out
set -gx PATH $PATH /usr/local/opt/gnu-tar/libexec/gnubin
set -gx PATH $PATH /usr/local/pgsql/bin/
set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/jdk-12.0.1.jdk/Contents/Home
set -gx EDITOR "nvim"
set -gx FABRIC /Users/senthil/go/src/github.com/hyperledger/fabric
set -gx LOADGEN /Users/senthil/projects/sparse-peer-support
set -gx BDB /Users/senthil/projects/github.ibm.com/blockchaindb/server
#set -x FABRIC_CFG_PATH /Users/senthil/git/src/github.com/hyperledger/fabric/sampleconfig/

set -g fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths
set -gx LDFLAGS "-L/usr/local/opt/qt/lib"
set -gx CPPFLAGS "-I/usr/local/opt/qt/include"
set -gx PKG_CONFIG_PATH "/usr/local/opt/qt/lib/pkgconfig"
set -gx PATH /Users/senthil/go/src/github.com/hyperledger/fabric/build/bin $PATH

alias fabric='cd /Users/senthil/go/src/github.com/hyperledger/fabric'
alias bdb='cd /Users/senthil/projects/github.ibm.com/blockchaindb/server'
alias gm='git checkout master'
alias pgchain='cd /Users/senthil/IBM-Research/postgresChain'
alias git-root='cd (git rev-parse --show-cdup)'

             # function fish_prompt --description 'Write out the prompt'
		 #set -l textcol  white
    		 #set -l bgcol    blue
    		 #set -l arrowcolr black
    		 #set_color $textcol -b $bgcol
    		 #set_color $arrowcol -b $arrowcolr
		 ##echo -n " "(basename $PWD)" "
		 #echo
             #    echo -n " "(basename $PWD)""(set_color normal) "> "
		 #echo
                 # set -l color_cwd
                 # set -l suffix
                 # switch "$USER"
                 #     case root toor
                 #         if set -q fish_color_cwd_root
                 #             set color_cwd $fish_color_cwd_root
                 #         else
                 #             set color_cwd $fish_color_cwd
                 #         end
                 #         set suffix '#'
                 #     case '*'
                 #         set color_cwd $fish_color_cwd
                 #         set suffix ''
                 # end
                 # echo
                 # echo -n -s (set_color $color_cwd) (prompt_pwd) (set_color normal) "$suffix "
             # end

