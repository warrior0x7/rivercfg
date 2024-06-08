App.config({
    windows: [
        // this is where window definitions will go
    ]
})

const myLabel = Widget.Label({
    label: 'some example content',
})

const myBar = Widget.Window({
    name: 'bar',
    anchor: ['top', 'left', 'right'],
    child: myLabel,
})

App.config({ windows: [myBar] })
