import { initializeApp } from 'https://www.gstatic.com/firebasejs/9.12.1/firebase-app.js';
import { getDatabase, ref , set  } from 'https://www.gstatic.com/firebasejs/9.12.1/firebase-database.js';
// TODO: Replace the following with your app's Firebase project configuration
const firebaseConfig = {
  //...
	apiKey: "AIzaSyAh4ZqSz-4YnlpJBgeQ6pR8kOQrAUNBVo8",
	authDomain: "seoul-75699.firebaseapp.com",
    databaseURL: "https://seoul-75699-default-rtdb.asia-southeast1.firebasedatabase.app",
    projectId: "seoul-75699",
    storageBucket: "seoul-75699.appspot.com",
    messagingSenderId: "384240893529",
    appId: "1:384240893529:web:5c9c1112e99d717ded7b48"
};

const app = initializeApp(firebaseConfig);
const database = getDatabase(app);

function writeUserData(userId, name, email, imageUrl) {
  const db = getDatabase();
  set(ref(db, 'users/' + userId), {
    username: name,
    email: email,
    profile_picture : imageUrl
  });
}