local M = {}

local fn = require('reactToolkit.functions')
local JSXComponents = require('reactToolkit.reactComponentJSX')
local TSXComponents = require('reactToolkit.reactComponentTSX')

local reactComponent = function (opts)
    local fileName = opts.args;
    local fileExtention = fn.getFileExtention(fileName)
    local RCName = fn.getRCName(fileName)
    local content = ""
    if fileExtention == 'jsx' then
        content = JSXComponents.getRCContent(RCName)
    elseif fileExtention == 'tsx' then
        content = TSXComponents.getRCContent(RCName)
    else
        return vim.api.nvim_err_writeln("Error: file extention not jsx or tsx")
    end
    fn.makeFile(fileName, content)
end

local reactComponentProps = function (opts)
    local fileName = opts.args;
    local fileExtention = fn.getFileExtention(fileName)
    local RCName = fn.getRCName(fileName)

    local content = ""
    if fileExtention == 'jsx' then
        content = JSXComponents.getRCPContent(RCName)
    elseif fileExtention == 'tsx' then
        content = TSXComponents.getRCPContent(RCName)
    else
        return vim.api.nvim_err_writeln("Error: file extention not jsx or tsx")
    end
    fn.makeFile(fileName, content)
end

local reactComponentPropsChilderen = function (opts)
    local fileName = opts.args;
    local fileExtention = fn.getFileExtention(fileName)
    local RCName = fn.getRCName(fileName)
    local content = ""
    if fileExtention == 'jsx' then
        content = JSXComponents.getRCPCContent(RCName)
    elseif fileExtention == 'tsx' then
        content = TSXComponents.getRCPCContent(RCName)
    else
        return vim.api.nvim_err_writeln("Error: file extention not jsx or tsx")
    end
    fn.makeFile(fileName, content)
end

function M.setup()
    vim.api.nvim_create_user_command("RC",reactComponent, {
        nargs = 1,
        desc = "fileName",
    })

    vim.api.nvim_create_user_command("RCP",reactComponentProps, {
        nargs = 1,
        desc = "fileName",
    })

    vim.api.nvim_create_user_command("RCPC",reactComponentPropsChilderen, {
        nargs = 1,
        desc = "fileName",
    })
end

return M
