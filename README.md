Xposed Module Template for Android Studio
-----------------------------------------

Create a Xposed Module easily with Android Studio

![](https://github.com/DVDAndroid/XposedModuleTemplate/blob/master/screenshot.png)

# How to

- [Download it](http://github.com/dvdandroid/XposedModuleTemplate/archive/master.zip)
- Extract and copy the `XposedModule` folder to the template folder located in:
`{Android Studio installation dir}\plugins\android\lib\templates\other\`

# Usage

If Android Studio is open, restart it.

 - Click **File > New > Other > Xposed Module** (or right click in the project)
 - Type your Xposed Description and your class name
 - Click **Finish** and wait for Gradle sync
 - In the module build.gradle, replace `implementation` in `implementation 'de.robv.android.xposed:api'` with `compileOnly`

![](https://github.com/DVDAndroid/XposedModuleTemplate/blob/master/wizard.png)
