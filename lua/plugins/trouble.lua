local status, trouble = pcall(require, "trouble")
if not status then
	print("trouble not found!")
	return
end

trouble.setup({})
