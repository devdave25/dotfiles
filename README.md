# dotfiles



### Themes

From https://github.com/catppuccin, Mocha theme.

#### Iterm

1. Launch iTerm
2. Press CMD+i (⌘+i)
3. Navigate to the **Colors** tab
4. Click on **Color Presets**
5. Click on **Import**
6. Navigate to the directory where you downloaded the files, and select the
   files.
   \
   If you cloned the repo, they are in the `colors/` directory.
7. Click on **Color Presets** and choose the Catppuccin flavour
8. Enjoy! :sparkles:

#### Windows Termainal

1. Launch Windows Terminal
2. Open the **Settings** panel (<kbd>Ctrl + ,</kbd>)
3. Select **Open JSON file** at bottom left corner (<kbd>Ctrl + Shift + ,</kbd>)
4. Copy the contents of mocha.json into the opened JSON file under **"schemes"**:

```json
{
    ..default layout
    "schemes":
    [
        ..catppuccin flavour
        ..other schemes
    ],
}
```

5. Copy the contents of mochaTheme_.json into the opened JSON file under **"themes"**:

```json
{
    ..default layout
    "themes":
    [
        ..catppuccin flavour
        ..other themes
    ],
}
```

6. Save and exit
7. In the **Settings** panel under Profiles, select the profile you want to apply the theme to. **Defaults** will apply theme to all profiles.
8. Select **Appearance**
9. Choose your mocha in the **Color scheme** drop down menu 
10. Click on **Save**, enjoy! ✨
