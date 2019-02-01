SetErrorMode(2)
SetWindowTitle( "MakeAtlas" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts
img = LoadImage("sprites.png")
im2 = LoadSubImage(img,"i_faster")
spr = CreateSprite(im2)
SetSpriteColor(spr,255,128,0,255)
SetSpritePositionByOffset(spr,512,384)
rot as float = 0.0
while not GetRawKeyPressed(27)
	SetSpriteSize(spr,rot,rot)
	SetSpriteAngle(spr,rot*8)
	rot = rot + 1.0
    Print( ScreenFPS() )
    Sync()
endwhile
