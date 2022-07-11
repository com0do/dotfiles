


vim.cmd([[

		" CTRL+p 打开文件模糊匹配
		let g:Lf_ShortcutF = '<c-p>'

		" ALT+n 打开 buffer 模糊匹配
		let g:Lf_ShortcutB = '<m-n>'

		" CTRL+n 打开最近使用的文件 MRU，进行模糊匹配
		noremap <c-n> :LeaderfMru<cr>

		" ALT+p 打开函数列表，按 i 进入模糊匹配，ESC 退出
		noremap <m-p> :LeaderfFunction<cr>

		" ALT+SHIFT+p 打开 tag 列表，i 进入模糊匹配，ESC退出
		noremap <m-P> :LeaderfBufTag!<cr>

		" ALT+n 打开 buffer 列表进行模糊匹配
		noremap <m-n> :LeaderfBuffer<cr>

		" ALT+m 全局 tags 模糊匹配
		"noremap <m-M> :LeaderfTag<cr>
    noremap <m-m> :<C-U><C-R>=printf("Leaderf! rg -s -w \"%s\" -g !*[Tt]est* -g !*.json -g !*.map -g !*.d",expand("<cword>"))<cr><cr>
    "noremap <m-m> :<C-U><C-R>=printf("Leaderf! rg -s -w \"%s\" -g !*.json -g !*.map -g !*.d",expand("<cword>"))<cr><cr>
    noremap <m-b> :<C-U><C-R>=printf("lv /\"%s\"/gj \%",expand("<cword>"))<cr><cr>

		" 最大历史文件保存 2048 个
		let g:Lf_MruMaxFiles = 2048

		" ui 定制
		let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

		" 如何识别项目目录，从当前文件目录向父目录递归知道碰到下面的文件/目录
		let g:Lf_RootMarkers = ['.project', '.root', '.svn']
		let g:Lf_WorkingDirectoryMode = 'Ac'
		let g:Lf_WindowHeight = 0.30
		let g:Lf_CacheDirectory = expand('~/.vim/cache')

    let g:Lf_RecurseSubmodules = 1
    "let g:Lf_DefaultMode = "Regex"
    "let g:Lf_UseVersionControlTool = 0
    "let g:Lf_DefaultExternalTool = "rg"
    "let g:Lf_UseCache = 0
    "let g:Lf_WindowPosition = 'popup'
    "let g:Lf_PreviewInPopup = 1

		" 显示绝对路径
		let g:Lf_ShowRelativePath = 0

		" 隐藏帮助
		let g:Lf_HideHelp = 1

		" 模糊匹配忽略扩展名
		let g:Lf_WildIgnore = {
					\ 'dir': ['.svn','.git','.hg','.cache'],
					\ 'file': ['*.sw?','~$*','*.bak','*.exe','*.d','*.o','*.so','*.py[co]']
					\ }

		" MRU 文件忽略扩展名
		let g:Lf_MruFileExclude = ['*.so', '*.exe', '*.py[co]', '*.sw?', '~$*', '*.bak', '*.tmp', '*.dll']
		let g:Lf_StlColorscheme = 'powerline'

		" 禁用 function/buftag 的预览功能，可以手动用 p 预览
		let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

		" 使用 ESC 键可以直接退出 leaderf 的 normal 模式
]])
