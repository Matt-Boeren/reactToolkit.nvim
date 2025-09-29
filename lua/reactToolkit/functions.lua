return {
    ---@param fileName string
    getFileExtention = function (fileName)
        local fileExtention = fileName:match("%.(.*)")
        return fileExtention
    end,

    ---@param fileName string
    getRCName = function (fileName)

        if not fileName then return nil end
        local lastDot = fileName:match(".*()%.")
        local lastSlash = fileName:match(".*()/")

        local result = ""

        if lastDot then
            if lastSlash and lastSlash < lastDot then
                result = fileName:sub(lastSlash + 1, lastDot - 1)
            else
                result = fileName:sub(1, lastDot - 1)
            end
        else
            if lastSlash then
                result = fileName:sub(lastSlash + 1)
            else
                result = fileName
            end
        end
        return result:sub(1,1):upper() .. result:sub(2)
    end,

    ---@param fileName string
    ---@param content string
    ---@param startFromFile boolean
    makeFile = function (fileName, content, startFromFile)
        local file_dir = ""
        if startFromFile then
            file_dir = vim.fn.expand("%:p:h")
        else
            file_dir = vim.loop.cwd()
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
