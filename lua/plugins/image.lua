local status_ok, image = pcall(require, "image")
if not status_ok then
	print("image not found!")
	return
end
-- Require and call setup function somewhere in your init.lua
image.setup({
	render = {
		min_padding = 5,
		show_label = true,
		use_dither = true,
		foreground_color = false,
		background_color = false,
	},
	events = {
		update_on_nvim_resize = true,
	},
})
