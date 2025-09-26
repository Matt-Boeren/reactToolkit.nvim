return {

    getRCContent = function (RCName)
        local content =
        "import React from 'react'\n\n"
        .. "const " .. RCName .. " = () => {\n\n"
        .. "\treturn (\n"
        .. "\t\t<>\n\n"
        .. "\t\t</>\n"
        .. "\t)\n"
        .. "}\n\n"
        .. "export default " .. RCName
        return content
    end,

    getRCPContent = function (RCName)
        local content =
        "import React from 'react'\n\n"
        .. "const " .. RCName .. " = (props) => {\n\n"
        .. "\treturn (\n"
        .. "\t\t<>\n\n"
        .. "\t\t</>\n"
        .. "\t)\n"
        .. "}\n\n"
        .. "export default " .. RCName
        return content
    end,

    getRCPCContent = function (RCName)
        local content =
        "import React from 'react'\n\n"
        .. "const " .. RCName .. " = ({ children }) => {\n\n"
        .. "\treturn (\n"
        .. "\t\t<>\n\n"
        .. "\t\t\t{children}"
        .. "\t\t</>\n"
        .. "\t)\n"
        .. "}\n\n"
        .. "export default " .. RCName
        return content
    end
}
