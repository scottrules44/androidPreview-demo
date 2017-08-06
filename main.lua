local androidPreview = require "plugin.androidPreview"
local json = require("json")
local bg = display.newRect( display.contentCenterX, display.contentCenterY, display.actualContentWidth, display.actualContentHeight )
local logo = display.newText( "External Storage Plugin", 0, 0, native.systemFontBold, 20 )
logo.x, logo.y = display.contentCenterX, 50
bg:setFillColor( 0,0,.4 )
local widget = require("widget")

local showPDFPreview = widget.newButton( {
	label = "Show Preview",
	id = "showPreview",
	labelColor = { default={ 0, 0, 1 }, over={ 0, 0, 0, 0.5 } },
	onRelease = function ( e )
		androidPreview.show(system.pathForFile( "sample.pdf" ))
	end
} )
showPDFPreview.x, showPDFPreview.y = display.contentCenterX, display.contentCenterY
