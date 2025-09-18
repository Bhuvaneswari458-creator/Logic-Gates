set number
set hlsearch
set incsearch
set showmode
set autoindent
set tabstop=4
set syntax=on
set nocompatible
set backspace=indent,eol,start
set guifont:Consolas:h16
set cursorline
inoremap { {}<Esc>ha
		inoremap ( ()<Esc>ha
						inoremap [ []<Esc>ha
						inoremap " ""<Esc>ha
						"inoremap ' ''<Esc>ha
						inoremap begin begin end<Esc>ha
						"inoremap clocking clocking endclocking<Esc>ha
"inoremap +inc +incdir+C:/uvm-1.2/src vsim -novopt -suppress 12110 top\ -sv_lib C:/questasim64_10.7c/uvm-1.2/win64/uvm_dpi<Esc>ha
inoremap $dis $display("");<Esc>ha
"inoremap covergroup covergroup endgroup<Esc>ha
"inoremap case case endcase<Esc>ha
"inoremap if if()begin end<Esc>ha
"inoremap else else begin end<Esc>ha
"inoremap function function endfunction<Esc>ha
"inoremap task task endtask<Esc>ha
inoremap fork fork join<Esc>ha
inoremap interface interface endinterface<Esc>ha
"inoremap module module endmodule<Esc>ha
inoremap class class endclass<Esc>ha
"colorscheme default
if version >= 700
        " always enable Vim tabs
        set showtabline=2
        set tabpagemax=20
        " set tab features just like browser
		  " open tab, close tab, next tab, previous tab (just like Chrome and Firefox keyboard shortcuts)
      map <C-1> <Esc>:tablast<CR>
      map <C-t> <Esc>:tabnew<CR>
      map <C-F4> <Esc>:tabclose<CR>
      map <C-Tab> <Esc>:tabnext<CR>
      map <C-S-Tab> <Esc>:tabprev<CR>
    endif
syntax on
