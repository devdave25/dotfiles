# programs

## Internet / Network

- [ ] Google Chrome
- [ ] NordVPN

## Communications

- [ ] Slack

## Terminal

- [ ] tmux
- [ ] nvim

## IDE

- [ ] Android Studio
- [ ] VS Code
- [ ] Xcode

## Development

- [ ] NodeJS (if multiple versions needed use `nvm` - Node version manager)


## Source control

- [ ] git
- [ ] Github Desktop

## Graphics

- [ ] Affinity Designer
- [ ] Excalidraw
- [ ] Figma

## Other

- [ ] Steam

## Mac

- [ ] RectangleApp

## Windows

- [ ] Chocolatey
- [ ] Git via choco

- [ ] Doppler (via bash)
- [ ] AWS CLI (online aws installer, use `aws configure` once installed)

- [ ] pgAdmin


- [ ] wsl?

### WINDOWS - Cap lock to Esc

Set:
```
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map" /t REG_BINARY /d 00000000000000000200000001003a0000000000
```

Query:
```
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map"
```

Delete:
```
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map"
```