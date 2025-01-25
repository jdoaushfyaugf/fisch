game.StarterGui:SetCore("SendNotification", {
    Title = "This is a test",
    Text = "Test",
    Duration = 10,  -- Duration of the notification in seconds
    Button1 = "Ok"
})
task.wait(10)
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Getting the RemoteEvent
local rodCastEvent = ReplicatedStorage:WaitForChild("events"):WaitForChild("rod_cast")

-- Fire the event when some condition occurs (e.g., user clicks a button or uses an item)
rodCastEvent:FireServer()
