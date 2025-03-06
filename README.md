#  Scheduled File Cleaner
**Automated file cleanup using Windows Task Scheduler. Deletes files from specified folders on a timed schedule.**

##  Overview
This project contains **batch scripts (`.bat`)** that automatically delete files from specific folders (e.g., `Screenshots` and `Downloads`).  
The cleanup process is scheduled to run **daily at 00:00**.  

##  Features
✅ Deletes files from specific folders.  
✅ Runs **automatically** every day at **midnight** (customizable).  
✅ Uses **Windows Task Scheduler** for execution.  
✅ If the scheduled task is missed, it **runs as soon as the user logs in**.  
✅ **Purpose:** Prevents manual file accumulation and saves disk space.  

---

##  Installation & Setup

###  Configure the Batch Scripts
You can find a collection of `.bat` scripts on `https://github.com/t-ros/Scheduled-File-Cleaner/tree/main/Scripts`, edit them to specify the directories you want to clean.  

###  Create a Scheduled Task in Windows

####  Open Task Scheduler
1. Press **`Win + R`**, type `taskschd.msc`, and press **Enter**.  
2. Click **"Create Task..."** in the right panel.  

####  General Settings
- **Name:** `Scheduled File Cleaner`  
- **Security options:**  
  ✅ "Run only when user is logged on"  
  ✅ *(Optional)* "Run with highest privileges"

####  Additional Settings
1. Go to the **Settings** tab:  
  ✅ "Run task as soon as possible after a scheduled start is missed"  
  ✅ *(Optional)* "Stop the task if it runs longer than X minutes"
2. Click **OK**.

####  Configure the Trigger (Schedule Customization)
1. Go to the **Triggers** tab → Click **"New..."**.  
2. **Begin the task:** `On a schedule`  
3. **Settings:** `Daily`  
4. **Start time:** `00:00`  
5. **Repeat every:** `1 days`  

####  Set the Action (Run the Script)
1. Go to the **Actions** tab → Click **"New..."**.  
2. **Action:** `Start a program`  
3. **Program/script:** Browse and select your `.bat` file.  

---

##  Testing the Task
To verify if the script runs correctly:  
- Right-click the task in Task Scheduler → **"Run"**.  
- Check the folders you tried cleaning to confirm files were deleted.  

---

##  Important Notes
⚠️ **Files will be permanently deleted**.   
⚠️ **Customize the script** before running to target only the folders you want to clean.  
⚠️ Consider making a **Backup** before running new scripts.

---

##  License
This project is licensed under the **MIT License**.
