require('mini.hipatterns').setup({
	highlighters = {
		 todo={ pattern='%f[%w]()%TODO()%f[%w]', group='MiniHipatternsTodo' },
		 fixme={ pattern='%f[%w]()%FIXME()%f[%w]', group='MiniHipatternsFixme' },
		 note={ pattern='%f[%w]()%NOTE()%f[%w]', group='MiniHipatternsNote' },
	}
})
