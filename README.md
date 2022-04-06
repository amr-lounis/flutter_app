# flutter_app -------------------------------------------
Do [Ctrl] + [Shift] + [P] =>  flutter : select device => [f5]

enable windows devloper

flutter create flutter_app
#  ------------------------------------------
cd android
.\gradlew signingReport
#  -------------------------------------------
flutter pub add get

flutter pub add shared_preferences

flutter pub add get_storage

flutter pub add jiffy

flutter pub add awesome_dialog

flutter pub add dropdown_search

flutter pub add image_picker

flutter pub add http

# map -------------------------------------------
flutter pub add geolocator

flutter pub add google_maps_flutter

flutter pub add flutter_polyline_points

# firebase -------------------------------------------
flutter pub add firebase_core

flutter pub add firebase_storage

flutter pub add cloud_firestore

flutter pub add firebase_messaging

flutter pub add firebase_auth
# ----------------------------------------

android {
    defaultConfig {
        // ...
        minSdkVersion 16
        targetSdkVersion 28
        multiDexEnabled true
    }
}

dependencies {
  implementation 'com.android.support:multidex:1.0.3'
}

# web ------------------
    <script src="https://www.gstatic.com/firebasejs/7.20.0/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.20.0/firebase-storage.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.20.0/firebase-messaging.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.20.0/firebase-firestore.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.20.0/firebase-auth.js"></script>

<script type="module">
  // Import the functions you need from the SDKs you need
  import { initializeApp } from "https://www.gstatic.com/firebasejs/9.6.10/firebase-app.js";
  import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.6.10/firebase-analytics.js";
  // TODO: Add SDKs for Firebase products that you want to use
  // https://firebase.google.com/docs/web/setup#available-libraries

  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  const firebaseConfig = {
    apiKey: "AIzaSyDgg8SwiSUC7_uQeC_9dTZECUYjfz8M30I",
    authDomain: "flutter-app-lounis.firebaseapp.com",
    projectId: "flutter-app-lounis",
    storageBucket: "flutter-app-lounis.appspot.com",
    messagingSenderId: "280540554613",
    appId: "1:280540554613:web:9a4dd74358e5a518a99f3c",
    measurementId: "G-DPZ599CE2F"
  };

  // Initialize Firebase
  const app = initializeApp(firebaseConfig);
  const analytics = getAnalytics(app);
</script>
# s ----------