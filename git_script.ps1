git init

# Only set if not already set globally
if (-not (git config user.name)) { git config user.name "Mansoor" }
if (-not (git config user.email)) { git config user.email "mansoor@example.com" }

# 1
git add build.gradle.kts settings.gradle.kts gradle.properties
git commit -m "Initialize project and root gradle files"

# 2
git add gradle/wrapper/
git commit -m "Add Gradle wrapper files"

# 3
git add gradle/libs.versions.toml
git commit -m "Configure version catalog for dependencies"

# 4
git add app/build.gradle.kts
git commit -m "Configure app module dependencies and Room KSP"

# 5
git add app/src/main/AndroidManifest.xml
git commit -m "Add AndroidManifest.xml and configure Application class"

# 6
git add app/src/main/res/values/strings.xml
git commit -m "Add string resources for the app"

# 7
git add app/src/main/res/values/dimens.xml
git commit -m "Add dimension resources for the app"

# 8
git add app/src/main/java/com/example/roomdb/ui/theme/Color.kt
git commit -m "Add custom theme colors"

# 9
git add app/src/main/java/com/example/roomdb/ui/theme/Type.kt
git commit -m "Add custom theme typography"

# 10
git add app/src/main/java/com/example/roomdb/ui/theme/Theme.kt
git commit -m "Implement Material3 theme for the application"

# 11
git add app/src/main/java/com/example/roomdb/room/Siswa.kt
git commit -m "Create Siswa Entity for Room Database"

# 12
git add app/src/main/java/com/example/roomdb/room/SiswaDao.kt
git commit -m "Create SiswaDao interface for Room queries"

# 13
git add app/src/main/java/com/example/roomdb/room/DatabaseSiswa.kt
git commit -m "Implement RoomDatabase setup"

# 14
git add app/src/main/java/com/example/roomdb/repositori/RepositoriSiswa.kt
git commit -m "Create RepositoriSiswa for abstracting data access"

# 15
git add app/src/main/java/com/example/roomdb/repositori/ContainerApp.kt
git commit -m "Create dependency injection container for App"

# 16
git add app/src/main/java/com/example/roomdb/AplikasiSiswa.kt
git commit -m "Create Application class to initialize ContainerApp"

# 17
git add app/src/main/java/com/example/roomdb/viewmodel/HomeViewModel.kt
git commit -m "Add HomeViewModel to expose list of Siswa"

# 18
git add app/src/main/java/com/example/roomdb/viewmodel/EntryViewModel.kt
git commit -m "Add EntryViewModel to handle data entry logic"

# 19
git add app/src/main/java/com/example/roomdb/viewmodel/PenyediaViewModel.kt
git commit -m "Create ViewModel Provider Factory"

# 20
git add app/src/main/java/com/example/roomdb/uicontroller/DestinasiNavigasi.kt
git commit -m "Create base Navigation Interface"

# 21
git add app/src/main/java/com/example/roomdb/uicontroller/DestinasiHome.kt
git commit -m "Add Home Navigation Destination object"

# 22
git add app/src/main/java/com/example/roomdb/uicontroller/DestinasiEntry.kt
git commit -m "Add Entry Navigation Destination object"

# 23
git add app/src/main/java/com/example/roomdb/uicontroller/PetaNavigasi.kt
git commit -m "Setup Jetpack Navigation Graph for the application"

# 24
git add app/src/main/java/com/example/roomdb/view/HalamanHome.kt
git commit -m "Implement Home Screen UI to list Siswa"

# 25
git add app/src/main/java/com/example/roomdb/view/HalamanEntry.kt
git commit -m "Implement Entry Screen UI to add new Siswa"

# 26
git add app/src/main/java/com/example/roomdb/MainActivity.kt
git commit -m "Configure MainActivity to launch Compose Navigation"

# 27
git add README.md screenshot.png
git commit -m "Add README documentation and app screenshot"

# 28
git add .
git commit -m "Final polish and catch-all for remaining files"

git remote add origin https://github.com/mansoor9572/0145_RoomDatabase.git
git branch -M main

# We can try to push, but it might fail if SSH/credentials are not set up properly in CLI.
git push -u origin main
