'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "9edeea1d7a39e6abb7fc500581ab37d7",
"assets/AssetManifest.bin.json": "56e0e82f6b3b1794609bd72059a87368",
"assets/AssetManifest.json": "afd5360547313ab807ea1f551ae974f9",
"assets/assets/account.png": "c709615a54ab05e1217ad562c650d745",
"assets/assets/accounts.png": "97a7db86250379d177a2ec9f106812ab",
"assets/assets/ads.png": "b283d94666208aee4ddc93e0e3219e0b",
"assets/assets/audiomack.png": "a0440b888241f6fb0226605399fc6c96",
"assets/assets/boomplay.png": "f453fb5803d445fec5b6126fcdbe637b",
"assets/assets/business-mentorship.png": "5e1e5ffe9cb0d462b5bf377fc311001d",
"assets/assets/business-plan.png": "147aea78345de5610aa9f9b49151cbce",
"assets/assets/cac.png": "2ff6f64f5c25e15465b54b7f358b732a",
"assets/assets/comment.png": "489f673870e764d137ae47ec8eef163d",
"assets/assets/community.png": "deef3b48dff2bc595dd7529afcc8e4a1",
"assets/assets/content.png": "817965ffe442119fc1fd7b62459cc950",
"assets/assets/crypto.png": "8e551dabc22749db67b4a4e05ed70c7d",
"assets/assets/discord.png": "0e4db740dd3e2d3ba7e60c7098896054",
"assets/assets/email-list.png": "b161b664973bf5d467236a03b4949bdd",
"assets/assets/facebook.png": "30e3a20386b524f8cc7fb3b6b4599ba4",
"assets/assets/facebookshare.png": "581a73d59e94eb0da6a139e076171c79",
"assets/assets/followers.png": "86b26d4d35ff671a21394fc3e079d8e4",
"assets/assets/form.png": "2b78695ba9de8da125a0d08d4b44fa66",
"assets/assets/gmail.png": "4139e9b7786581c4f7411e8301cb8799",
"assets/assets/graphics.png": "a0ee8c92b18fd4263ca64e13c4fdac8c",
"assets/assets/insta.png": "17e177939d10e130e071fc32ac24f8c0",
"assets/assets/international.png": "6fcd8127ca53875ef228ffb31fd14c3c",
"assets/assets/like.png": "68f68fb384636bbb1991fdd5a17749a9",
"assets/assets/linkedin.png": "efd62a41d09e04d9176af93036e72b68",
"assets/assets/live.png": "6d1a82df4a9113dcceb22b206d6e5caa",
"assets/assets/logo.png": "00a1f31af8a40dd28ec9b196c14f96ab",
"assets/assets/management.png": "be7412c0726a686d08e8178b863bc4c2",
"assets/assets/messenger.png": "125fa9b9630e0fe6ef908477d7d5fe37",
"assets/assets/monetize.png": "19c2e8afe0ada67d83666ef9147c490f",
"assets/assets/more.png": "aaf3498985e473f93c2fce5bfdff210c",
"assets/assets/numbers.png": "c1866398c130993a8c538a956843dd44",
"assets/assets/patent.png": "c99e5b98aa5dccb94d7ff4f103929367",
"assets/assets/report.png": "a47ef60c3c33ba3e77c7728b4c48a18c",
"assets/assets/request.png": "e07d6f1015cedbfce6e5712d0867016d",
"assets/assets/share.png": "94d27a33d779007b0a595e551f827372",
"assets/assets/SMEDEN.png": "ff02a1e5ba7f84bbd0a9e72ce222fcf4",
"assets/assets/snapchat.png": "94fd2afc0053bfa05d204caf58d6b024",
"assets/assets/spotify.png": "5dec482511d7a3b8feb442de26fb11bd",
"assets/assets/story.png": "a198861b0dd48c7287347a1330ab0d3a",
"assets/assets/telegram.png": "6f3e439babdc19423b7b21e73593e1db",
"assets/assets/tiktok.png": "efa8d479bbb79debd9c2cf7c2f0ef98b",
"assets/assets/twitter.png": "939b4d450acbdcc3fc6dccc5b044cc80",
"assets/assets/verify.png": "e560e6ef8b8d68b2509a2b840522cbdf",
"assets/assets/videoview.png": "0ad231cdcf630bfaa1ff73a02720811d",
"assets/assets/website.png": "0190ab6f4225f5f344164cdbe9275f32",
"assets/assets/whatsapp.png": "15dc1eaff33578997a0d9b58b760b306",
"assets/assets/writing-content.png": "d8a46936df53f8ea0752f5309966cf7e",
"assets/assets/writing-plan.png": "f693076b6d70847ebeb19a250a93c82c",
"assets/assets/youtube.png": "b62c0d12cf24fb857843e7a72b195c44",
"assets/FontManifest.json": "cc9134484df7db45a34365aa006394e0",
"assets/fonts/MaterialIcons-Regular.otf": "b6908dbfcc6b83cde22f74db2d33c8e0",
"assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/fonts/Poppins-Italic.ttf": "c1034239929f4651cc17d09ed3a28c69",
"assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/NOTICES": "8c99a6bd220316692ff4b5806e8f751e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/flutter_inappwebview/assets/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/flutter_inappwebview/assets/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "0272c03efd70afd7c0a5ff384b2914d2",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "d7793dda114189db8a8011c59516d5ed",
"/": "d7793dda114189db8a8011c59516d5ed",
"main.dart.js": "e4b83264197c6c018b72ffcedef344db",
"manifest.json": "d927c273f400faa2674512f5bb6cd04b",
"version.json": "a89010fbd560c0ea282468f44a959c65"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
