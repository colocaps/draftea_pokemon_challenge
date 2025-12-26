# --- Firebase Auth & Google Sign-In ---

# Mantener las clases de Google Play Services (Auth)
-keep class com.google.android.gms.auth.** { *; }
-keep class com.google.android.gms.common.** { *; }
-keep class com.google.android.gms.tasks.** { *; }

# Mantener clases de Firebase Auth
-keep class com.google.firebase.auth.** { *; }
-dontwarn com.google.firebase.auth.**

# Mantener clases de Firebase Core
-keep class com.google.firebase.** { *; }
-dontwarn com.google.firebase.**

# Mantener clases de Google Sign-In
-keep class com.google.android.gms.signin.** { *; }
-keep class com.google.android.gms.auth.api.signin.** { *; }

# Mantener interfaces usadas por reflexión
-keep interface com.google.android.gms.* { *; }

# Evitar warnings innecesarios
-dontwarn com.google.android.gms.**
