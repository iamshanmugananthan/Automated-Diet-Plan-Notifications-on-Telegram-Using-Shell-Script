# Automated-Diet-Plan-Notifications-on-Telegram-Using-Shell-Script
 This shell script sends daily diet plan reminders via Telegram from Monday to Saturday at specified times. Perfect for keeping you on track with your diet!
![image](https://github.com/user-attachments/assets/267c1fcb-fef9-41a2-a561-eada79138830)

# Step 1: Create a Telegram Bot
Open the Telegram app and search for the BotFather.
Start a chat with BotFather and use the command /newbot to create a new bot.
Follow the prompts to name your bot and choose a username.
After creation, BotFather will provide you with a Bot Token. Save this token; you will need it to send messages.

# Step 2: Create a Telegram Group
In the Telegram app, create a new group by tapping on the menu and selecting "New Group."
Add any members you want (or just yourself) to the group.

# Step 3: Add Your Bot to the Group
Once the group is created, go to the group settings.
Tap on "Add Members" and search for your bot by its username.
Add the bot to the group.

# Step 4: Get the Group ID
To get the group ID, you can use the bot to send a message to the group.
Then, you can check the updates using the following URL, replacing <YOUR_BOT_TOKEN> with your bot token:
https://api.telegram.org/bot<YOUR_BOT_TOKEN>/getUpdates
Look for the message you sent in the JSON response and note the chat section. The id value is your group ID.

# Step 5: Create and Edit the Shell Script
Create a shell script file, for example: /etc/reminder.sh.

Open the file in a text editor and add the following code, replacing <YOUR_BOT_TOKEN> and <YOUR_GROUP_ID> with the respective values:

Add a new line to schedule the script to run at your desired times. For example, to send reminders at 9 AM from Monday to Saturday, add:
0 9 * * 1-6 /bin/bash /etc/reminder.sh
Save and exit the crontab editor.

# Result
Once you have completed these steps, your Linux system will automatically send diet plan reminders to your Telegram group at the scheduled times, helping you stay on track with your dietary goals!






