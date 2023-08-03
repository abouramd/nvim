local ale = require('feline.custom_providers.ale')

require('feline').setup({
	-- ...
	custom_providers = {
		ale_error = ale.diagnostic_error_provider,
		ale_warning = ale.diagnostic_warning_provider,
		ale_info = ale.diagnostic_info_provider,
	},
})
