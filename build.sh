src=src;
out=out;
ibg=none;
sbg=none;

# Generate all types of favicons
# Please take a look of the README.md file
echo 'Generating...';
cp $src/safari.svg $out/safari.svg;
convert -resize 3000 -background $ibg -gravity center $src/icon.svg $src/icon-hd.png;
convert -resize 3000 -background $ibg -gravity center $src/splash.svg $src/splash-hd.png;
convert -resize 3000 -background $ibg -gravity center $src/mstile.svg $src/mstile-hd.png;

echo 'Img Source icon.';
convert -resize 110 -background $ibg -gravity center $src/icon-hd.png $out/img-src.png;

echo 'Legacy favicon.';
convert -define icon:auto-resize=64,48,32,16 -background $ibg -gravity center $src/icon-hd.png $out/favicon.ico;

echo 'Stand alone favicons.';
convert -resize 16 -background $ibg -gravity center $src/icon-hd.png $out/icon-16x16.png;
convert -resize 32 -background $ibg -gravity center $src/icon-hd.png $out/icon-32x32.png;
convert -resize 96 -background $ibg -gravity center $src/icon-hd.png $out/icon-96x96.png;
convert -resize 120 -background $ibg -gravity center $src/icon-hd.png $out/icon-120x120.png;
convert -resize 152 -background $ibg -gravity center $src/icon-hd.png $out/icon-152x152.png;
convert -resize 167 -background $ibg -gravity center $src/icon-hd.png $out/icon-167x167.png;
convert -resize 180 -background $ibg -gravity center $src/icon-hd.png $out/icon-180x180.png;
convert -resize 192 -background $ibg -gravity center $src/icon-hd.png $out/icon-192x192.png;
convert -resize 512 -background $ibg -gravity center $src/icon-hd.png $out/icon-512x512.png;

echo 'MSTiles.';
convert -resize 70 -background $ibg -gravity center -extent 70 $src/mstile-hd.png $out/mstile-70x70.png;
convert -resize 270 -background $ibg -gravity center -extent 270 $src/mstile-hd.png $out/mstile-270x270.png;
convert -resize 310 -background $ibg -gravity center -extent 310 $src/mstile-hd.png $out/mstile-310x310.png;
convert -resize 310x150 -background $ibg -gravity center -extent 310x150 $src/mstile-hd.png $out/mstile-310x150.png;

echo 'PWA splash screens.';
convert -resize 2048x2732 -background $sbg -gravity center -extent 2048x2732 $src/splash-hd.png $out/splash-2048x2732.png;
convert -resize 2732x2048 -background $sbg -gravity center -extent 2732x2048 $src/splash-hd.png $out/splash-2732x2048.png;
convert -resize 1668x2388 -background $sbg -gravity center -extent 1668x2388 $src/splash-hd.png $out/splash-1668x2388.png;
convert -resize 2388x1668 -background $sbg -gravity center -extent 2388x1668 $src/splash-hd.png $out/splash-2388x1668.png;
convert -resize 1536x2048 -background $sbg -gravity center -extent 1536x2048 $src/splash-hd.png $out/splash-1536x2048.png;
convert -resize 2048x1536 -background $sbg -gravity center -extent 2048x1536 $src/splash-hd.png $out/splash-2048x1536.png;
convert -resize 1668x2224 -background $sbg -gravity center -extent 1668x2224 $src/splash-hd.png $out/splash-1668x2224.png;
convert -resize 2224x1668 -background $sbg -gravity center -extent 2224x1668 $src/splash-hd.png $out/splash-2224x1668.png;
convert -resize 1620x2160 -background $sbg -gravity center -extent 1620x2160 $src/splash-hd.png $out/splash-1620x2160.png;
convert -resize 2160x1620 -background $sbg -gravity center -extent 2160x1620 $src/splash-hd.png $out/splash-2160x1620.png;
convert -resize 1284x2778 -background $sbg -gravity center -extent 1284x2778 $src/splash-hd.png $out/splash-1284x2778.png;
convert -resize 2778x1284 -background $sbg -gravity center -extent 2778x1284 $src/splash-hd.png $out/splash-2778x1284.png;
convert -resize 1170x2532 -background $sbg -gravity center -extent 1170x2532 $src/splash-hd.png $out/splash-1170x2532.png;
convert -resize 2532x1170 -background $sbg -gravity center -extent 2532x1170 $src/splash-hd.png $out/splash-2532x1170.png;
convert -resize 1125x2436 -background $sbg -gravity center -extent 1125x2436 $src/splash-hd.png $out/splash-1125x2436.png;
convert -resize 2436x1125 -background $sbg -gravity center -extent 2436x1125 $src/splash-hd.png $out/splash-2436x1125.png;
convert -resize 1242x2688 -background $sbg -gravity center -extent 1242x2688 $src/splash-hd.png $out/splash-1242x2688.png;
convert -resize 2688x1242 -background $sbg -gravity center -extent 2688x1242 $src/splash-hd.png $out/splash-2688x1242.png;
convert -resize 828x1792 -background $sbg -gravity center -extent 828x1792 $src/splash-hd.png $out/splash-828x1792.png;
convert -resize 1792x828 -background $sbg -gravity center -extent 1792x828 $src/splash-hd.png $out/splash-1792x828.png;
convert -resize 1242x2208 -background $sbg -gravity center -extent 1242x2208 $src/splash-hd.png $out/splash-1242x2208.png;
convert -resize 2208x1242 -background $sbg -gravity center -extent 2208x1242 $src/splash-hd.png $out/splash-2208x1242.png;
convert -resize 750x1334 -background $sbg -gravity center -extent 750x1334 $src/splash-hd.png $out/splash-750x1334.png;
convert -resize 1334x750 -background $sbg -gravity center -extent 1334x750 $src/splash-hd.png $out/splash-1334x750.png;
convert -resize 640x1136 -background $sbg -gravity center -extent 640x1136 $src/splash-hd.png $out/splash-640x1136.png;
convert -resize 1136x640 -background $sbg -gravity center -extent 1136x640 $src/splash-hd.png $out/splash-1136x640.png;

echo 'Done!';
