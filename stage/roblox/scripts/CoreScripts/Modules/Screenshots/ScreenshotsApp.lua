local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Modules = CoreGui.RobloxGui.Modules
local ChromeEnabled = require(Modules.Chrome.Enabled)

local Screenshots = require(CorePackages.Workspace.Packages.Screenshots)

local FFlagUpdateComposerScreenInsets =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagUpdateComposerScreenInsets

local ScreenshotsApp = Screenshots.App.createApp()

local CarouselScreenGui = Instance.new("ScreenGui")
CarouselScreenGui.DisplayOrder = Screenshots.Constants.CarouselDisplayOrder
CarouselScreenGui.Name = "ScreenshotsCarousel"
CarouselScreenGui.ResetOnSpawn = false
CarouselScreenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
CarouselScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CarouselScreenGui.Parent = CoreGui

local CaptureManagerScreenGui = Instance.new("ScreenGui")
CaptureManagerScreenGui.DisplayOrder = Screenshots.Constants.CarouselDisplayOrder
CaptureManagerScreenGui.Name = "CaptureManager"
CaptureManagerScreenGui.ResetOnSpawn = false
CaptureManagerScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CaptureManagerScreenGui.Parent = CoreGui

local ComposerScreenGui = Instance.new("ScreenGui")
ComposerScreenGui.DisplayOrder = Screenshots.Constants.ComposerDisplayOrder
ComposerScreenGui.Name = "Composer"
ComposerScreenGui.ResetOnSpawn = false
ComposerScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ComposerScreenGui.SafeAreaCompatibility = Enum.SafeAreaCompatibility.FullscreenExtension
ComposerScreenGui.ScreenInsets = if FFlagUpdateComposerScreenInsets
	then Enum.ScreenInsets.None
	else Enum.ScreenInsets.DeviceSafeInsets
ComposerScreenGui.Parent = CoreGui

local OverlayScreenGui = Instance.new("ScreenGui")
OverlayScreenGui.DisplayOrder = Screenshots.Constants.OverlayDisplayOrder
OverlayScreenGui.Name = Screenshots.Constants.OverlayName
OverlayScreenGui.ResetOnSpawn = false
OverlayScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
OverlayScreenGui.Parent = CoreGui

ScreenshotsApp.mountCaptureManager(CaptureManagerScreenGui)
ScreenshotsApp.mountCarousel(CarouselScreenGui)
ScreenshotsApp.mountComposer(ComposerScreenGui)
ScreenshotsApp.mountCoreUI(RobloxGui, ChromeEnabled())
ScreenshotsApp.mountCaptureOverlay(OverlayScreenGui)

return ScreenshotsApp