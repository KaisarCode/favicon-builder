# FaviconBuilder (Bash script)
Bash script and sources to generate crossbrowser favicons from SVG files

## Requirements
- Imagemagick

## What you need to know
- Use the SVG templates in /src and fill them with your icon

## Sources
- icon.svg: General favicons
- mstile.svg: Microsoft icons
- safari.svg: Safari pinned-tab icon
- splash.svg: Icon used is splash screens

## Build icons
On a terminal:
```bash
sh ./build.sh
```

### manifest.json
```json
{
    "icons": [
        {
          "src": "out/icon-192.png",
          "sizes": "192x192",
          "type": "image/png",
          "purpose": "maskable any"
        },
        {
          "src": "out/icon-512.png",
          "sizes": "512x512",
          "type": "image/png",
          "purpose": "maskable any"
        }
    ]
}
```

### browserconfig.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<browserconfig>
    <msapplication>
        <tile>
            <square70x70logo src="out/mstile-70x70.png"/>
            <square270x270logo src="out/mstile-270x270.png"/>
            <square310x310logo src="out/mstile-310x310.png"/>
            <wide310x150logo src="out/mstile-310x150.png"/>
            <TileColor>#ffffff</TileColor>
        </tile>
    </msapplication>
</browserconfig>
```

### HTML tags
```html
<!-- Classic favicons -->
<link href="out/img-src.png" rel="image_src" />
<link href="out/favicon.ico" rel="shortcut icon" />
<link href="out/icon-16x16.png" rel="icon" type="image/png" sizes="16x16" />
<link href="out/icon-32x32.png" rel="icon" type="image/png" sizes="32x32" />
<link href="out/icon-96x96.png" rel="icon" type="image/png" sizes="96x96" />

<!-- Apple touch icons -->
<link href="safari.svg" rel="mask-icon" color="#ffffff" />
<link href="out/icon-120x120.png" rel="apple-touch-icon" sizes="120x120" />
<link href="out/icon-152x152.png" rel="apple-touch-icon" sizes="152x152" />
<link href="out/icon-167x167.png" rel="apple-touch-icon" sizes="167x167" />
<link href="out/icon-180x180.png" rel="apple-touch-icon" sizes="180x180" />

<!-- Microsoft icons -->
<meta name="msapplication-config" content="browserconfig.xml"/>
<meta name="msapplication-TileColor" content="#ffffff" />
<meta name="theme-color" content="#ffffff" />

<!-- PWA icons and splash screens -->
<meta name="apple-mobile-web-app-capable" content="yes"/>
<link rel="apple-touch-startup-image" href="out/splash-2048x2732.png" media="(device-width: 1024px) and (device-height: 1366px) and (-webkit-device-pixel-ratio: 2) and (orientation: portrait)"/>
<link rel="apple-touch-startup-image" href="out/splash-2732x2048.png" media="(device-width: 1024px) and (device-height: 1366px) and (-webkit-device-pixel-ratio: 2) and (orientation: landscape)"/>
<link rel="apple-touch-startup-image" href="out/splash-1668x2388.png" media="(device-width: 834px) and (device-height: 1194px) and (-webkit-device-pixel-ratio: 2) and (orientation: portrait)"/>
<link rel="apple-touch-startup-image" href="out/splash-2388x1668.png" media="(device-width: 834px) and (device-height: 1194px) and (-webkit-device-pixel-ratio: 2) and (orientation: landscape)"/>
<link rel="apple-touch-startup-image" href="out/splash-1536x2048.png" media="(device-width: 768px) and (device-height: 1024px) and (-webkit-device-pixel-ratio: 2) and (orientation: portrait)"/>
<link rel="apple-touch-startup-image" href="out/splash-2048x1536.png" media="(device-width: 768px) and (device-height: 1024px) and (-webkit-device-pixel-ratio: 2) and (orientation: landscape)"/>
<link rel="apple-touch-startup-image" href="out/splash-1668x2224.png" media="(device-width: 834px) and (device-height: 1112px) and (-webkit-device-pixel-ratio: 2) and (orientation: portrait)"/>
<link rel="apple-touch-startup-image" href="out/splash-2224x1668.png" media="(device-width: 834px) and (device-height: 1112px) and (-webkit-device-pixel-ratio: 2) and (orientation: landscape)"/>
<link rel="apple-touch-startup-image" href="out/splash-1620x2160.png" media="(device-width: 810px) and (device-height: 1080px) and (-webkit-device-pixel-ratio: 2) and (orientation: portrait)"/>
<link rel="apple-touch-startup-image" href="out/splash-2160x1620.png" media="(device-width: 810px) and (device-height: 1080px) and (-webkit-device-pixel-ratio: 2) and (orientation: landscape)"/>
<link rel="apple-touch-startup-image" href="out/splash-1284x2778.png" media="(device-width: 428px) and (device-height: 926px) and (-webkit-device-pixel-ratio: 3) and (orientation: portrait)"/>
<link rel="apple-touch-startup-image" href="out/splash-2778x1284.png" media="(device-width: 428px) and (device-height: 926px) and (-webkit-device-pixel-ratio: 3) and (orientation: landscape)"/>
<link rel="apple-touch-startup-image" href="out/splash-1170x2532.png" media="(device-width: 390px) and (device-height: 844px) and (-webkit-device-pixel-ratio: 3) and (orientation: portrait)"/>
<link rel="apple-touch-startup-image" href="out/splash-2532x1170.png" media="(device-width: 390px) and (device-height: 844px) and (-webkit-device-pixel-ratio: 3) and (orientation: landscape)"/>
<link rel="apple-touch-startup-image" href="out/splash-1125x2436.png" media="(device-width: 375px) and (device-height: 812px) and (-webkit-device-pixel-ratio: 3) and (orientation: portrait)"/>
<link rel="apple-touch-startup-image" href="out/splash-2436x1125.png" media="(device-width: 375px) and (device-height: 812px) and (-webkit-device-pixel-ratio: 3) and (orientation: landscape)"/>
<link rel="apple-touch-startup-image" href="out/splash-1242x2688.png" media="(device-width: 414px) and (device-height: 896px) and (-webkit-device-pixel-ratio: 3) and (orientation: portrait)"/>
<link rel="apple-touch-startup-image" href="out/splash-2688x1242.png" media="(device-width: 414px) and (device-height: 896px) and (-webkit-device-pixel-ratio: 3) and (orientation: landscape)"/>
<link rel="apple-touch-startup-image" href="out/splash-828x1792.png" media="(device-width: 414px) and (device-height: 896px) and (-webkit-device-pixel-ratio: 2) and (orientation: portrait)"/>
<link rel="apple-touch-startup-image" href="out/splash-1792x828.png" media="(device-width: 414px) and (device-height: 896px) and (-webkit-device-pixel-ratio: 2) and (orientation: landscape)"/>
<link rel="apple-touch-startup-image" href="out/splash-1242x2208.png" media="(device-width: 414px) and (device-height: 736px) and (-webkit-device-pixel-ratio: 3) and (orientation: portrait)"/>
<link rel="apple-touch-startup-image" href="out/splash-2208x1242.png" media="(device-width: 414px) and (device-height: 736px) and (-webkit-device-pixel-ratio: 3) and (orientation: landscape)"/>
<link rel="apple-touch-startup-image" href="out/splash-750x1334.png" media="(device-width: 375px) and (device-height: 667px) and (-webkit-device-pixel-ratio: 2) and (orientation: portrait)"/>
<link rel="apple-touch-startup-image" href="out/splash-1334x750.png" media="(device-width: 375px) and (device-height: 667px) and (-webkit-device-pixel-ratio: 2) and (orientation: landscape)"/>
<link rel="apple-touch-startup-image" href="out/splash-640x1136.png" media="(device-width: 320px) and (device-height: 568px) and (-webkit-device-pixel-ratio: 2) and (orientation: portrait)"/>
<link rel="apple-touch-startup-image" href="out/splash-1136x640.png" media="(device-width: 320px) and (device-height: 568px) and (-webkit-device-pixel-ratio: 2) and (orientation: landscape)"/>
```
