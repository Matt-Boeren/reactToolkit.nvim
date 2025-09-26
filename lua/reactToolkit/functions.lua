return {
    ---@param fileName string
    getFileExtention = function (fileName)
        local fileExtention = fileName:match("%.(.*)")
        return fileExtention
    end,

    ---@param fileName string
    getRCName = function (fileName)
        local RCName = fileName:match("^(.-)%.")
        RCName = RCName:gsub("^%l", string.upper)
        return RCName
    end,

    ---@param fileName string
    ---@param content string
    makeFile = function (fileName, content)
        local file_dir = vim.fn.expand("%:p:h")  -- directory of the current file
        if file_dir == "" then
            file_dir = vim.loop.cwd()  -- fallback if no file is open
        end
        local filepath = file_dir .. "/" .. fileName

        local file = io.open(filepath, "w")
        if file then
            file:write(content)
            file:close()
            print("File created: " .. filepath)
        else
            return print("Error creating file: " .. filepath)
        end
        vim.cmd('edit ' .. filepath)
    end
}
