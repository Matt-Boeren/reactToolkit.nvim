return {

    getRCContent = function (RCName)
        local content =
            "import { type FC } from 'react'\n\n"
            .. "const " .. RCName .. ": FC = () => {\n"
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
            "import { type FC } from 'react'\n\n"
            .. "interface i" .. RCName .. " {\n\n}\n\n"
            .. "const " .. RCName ..  ": FC" .. "<i" .. RCName .. "> = (props) => {\n"
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
            "import { type FC, type PropsWithChildren } from 'react'\n\n"
            .. "interface i" .. RCName .. " extends PropsWithChildren {\n\n}\n\n"
            .. "const " .. RCName ..  ": FC" .. "<i" .. RCName .. "> = (props) => {\n"
            .. "\treturn (\n"
            .. "\t\t<>\n"
            .. "\t\t\t{props.children}\n"
            .. "\t\t</>\n"
            .. "\t)\n"
            .. "}\n\n"
            .. "export default " .. RCName
        return content
    end

}
