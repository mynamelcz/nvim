local setup, autopairs = pcall(require, "nvim-autopairs")
if not setup then
    print("autopairs not found!")
    return
end

autopairs .setup()





