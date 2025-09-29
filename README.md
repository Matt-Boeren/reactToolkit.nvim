# reactToolkit.nvim
Plugin written to automate React component templates directly in Neovim.
By using the plugin, it will create a new file with a basic template for the component.
The plugin has support for jsx and tsx. Choosing the type is done by changing the file extension in the command.

## Usage

There are 3 types of components the plugin can make basic templates for; they are the following:

### Basic React component

A basic React component can be made by running ":RC" followed by the file name (RC is short for React Component).
For example, you can run ":RC basicComponent.tsx" and it will generate the following:
```tsx
import { type FC } from 'react'

const BasicComponent: FC = () => {
	return (
		<>

		</>
	)
}

export default BasicComponent
```

### React component with props

A React component with props can be made by running ":RCP" followed by the file name (RCP is short for React Component with Props).
For example, you can run ":RCP componentProps.tsx" and it will generate the following:
```tsx
import { type FC } from 'react'

interface iComponentProps {

}

const ComponentProps: FC<iComponentProps> = (props) => {
	return (
		<>

		</>
	)
}

export default ComponentProps
```

### React component with props and children

A React component with props and children can be made by running ":RCPC" followed by the file name (RCPC is short for React Component with Props with Children).
For example, you can run ":RCPC componentChildren.tsx" and it will generate the following:
```tsx
import { type FC, type PropsWithChildren } from 'react'

interface iComponentChildren extends PropsWithChildren {

}

const ComponentChildren: FC<iComponentChildren> = (props) => {
	return (
		<>
			{props.children}
		</>
	)
}

export default ComponentChildren
```

## Install guide using Packer

In your packer startup add the following line:
```lua
    use('Matt-Boeren/reactToolkit.nvim')
```
Create a new file in after/plugin and add the following content.
The `startFromFile` variable sets if the file will be created at the directory of the current open file in Neovim (`true`) or the current working directory (the directory where Neovim was opened) (`false`). 
```lua
local reactToolkit = require('reactToolkit')
reactToolkit.setup({
    startFromFile = true
})
```
