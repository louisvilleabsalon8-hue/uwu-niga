DELTA SKYBOX FILES

1. Upload each Skybox*.png image to Roblox as an image asset.
2. Copy each image's asset ID.
3. Edit delta_skybox.lua and replace the six PASTE_* placeholders.
4. Upload delta_skybox.lua to your GitHub repository.

GitHub raw loader format:
loadstring(game:HttpGet("https://raw.githubusercontent.com/USERNAME/REPOSITORY/BRANCH/delta_skybox.lua"))()

Note: This changes the client-side Lighting Sky object only where the script is permitted to run. Roblox may restrict asset use or script execution. Do not run scripts from sources you do not trust.
