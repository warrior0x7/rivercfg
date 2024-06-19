const myLabel = Widget.Label({
    label: 'Hello World!',
})

const myBar = Widget.Window({
    name: 'bar',
    anchor: ['top', 'left', 'right'],
    child: myLabel,
})

App.config({
    windows: [
        myBar
    ]
})
