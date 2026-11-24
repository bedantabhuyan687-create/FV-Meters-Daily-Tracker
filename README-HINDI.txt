GENUS POWER - FV METERS DAILY TRACKER
====================================

IS PACKAGE MEIN KYA HAI
- Purane FV daily visit form ke fields
- Employee, Sub-Division, Purpose aur Reason For Non-Com dropdowns
- Error aur RSSI text fields
- Meter/Consumer number aur mobile number
- NIC, SIM, terminal seal aur box seal details
- Defective meter / replacement details
- Complete Installation Photo aur Issues Point Photo
- Dashboard counts, date/employee/subdivision filters
- Excel download, selected/filtered record delete
- Local IndexedDB storage aur offline app shell cache

OFFLINE USE
1. Folder ko GitHub Pages par upload karein.
2. App ko HTTPS link se open karein.
3. Pehli baar internet ke saath open karke app cache hone dein.
4. Is browser/device par entries offline bhi save hongi.
5. Internet wapas aane par cloud sync tabhi chalega jab secure backend aur login configured honge.

IMPORTANT: CLOUD SYNC ABHI CONFIGURE NAHI HAI
config.js mein Supabase placeholders hain. Is app mein consumer mobile numbers aur employee details hain.
Isliye public/anonymous database access enable nahi kiya gaya hai. Secure Supabase Auth session aur private Storage bucket
configure kiye bina records devices ke beech sync nahi honge. SQL file authenticated-only RLS banati hai.

PASSWORD
Download aur Delete buttons par password prompt: FROMGENP5
NOTE: Static GitHub Pages app mein frontend password source code se dekha ja sakta hai.
Yeh basic UI lock hai, enterprise-grade security nahi. Strong protection ke liye server-side Edge Function / authenticated admin role zaroori hai.

GITHUB PAGES UPDATE
1. Existing repository Genus-Meters-Location-Update-app open karein.
2. Existing files ka backup download karein.
3. Is folder ke index.html, styles.css, app.js, config.js, manifest.webmanifest aur sw.js ko repository root mein replace/upload karein.
4. Supabase secure login/sync configure hone ke baad hi multi-device syncing active hoga.

NOTE
Employee/subdivision/purpose/reason options user-provided list ke mutabik add kiye gaye hain.
