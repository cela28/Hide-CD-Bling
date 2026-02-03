-- HideCDBling: Suppresses bling animation on cooldown viewer frames
-- Author: Hide CD Bling Contributors
-- Version: 1.0.0

local addonName = "HideCDBling"

-- Viewer frame names (Essential and Utility cooldown bars)
local VIEWER_FRAMES = {
    "EssentialCooldownViewer",
    "UtilityCooldownViewer"
}

-- Core function: suppress bling on all cooldown viewer icons
local function HideBling()
    for _, viewerName in ipairs(VIEWER_FRAMES) do
        local viewer = _G[viewerName]
        if viewer then
            -- GetChildren() returns multiple values; wrap in {} for ipairs
            local children = {viewer:GetChildren()}
            for _, child in ipairs(children) do
                -- Defensive check: CooldownFlash may not exist on all children
                if child.CooldownFlash then
                    child.CooldownFlash:SetAlpha(0)
                end
            end
        end
    end
end

-- Event frame for initialization
local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
eventFrame:SetScript("OnEvent", function(self, event)
    -- Small delay to ensure frames are fully initialized
    -- 0.5 seconds provides comfortable margin
    C_Timer.After(0.5, HideBling)
end)

-- Hook Blizzard's layout refresh to reapply suppression
-- Catches Edit Mode changes, new icon creation, /reload
if CooldownViewerSettings and CooldownViewerSettings.RefreshLayout then
    hooksecurefunc(CooldownViewerSettings, "RefreshLayout", HideBling)
end
