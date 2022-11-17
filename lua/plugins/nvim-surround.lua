local setup, surround = pcall(require, "nvim-surround")
if not setup then
	print("nvim-surround not found")
	return
end

surround.setup()
