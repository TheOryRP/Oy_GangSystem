🚨 Advanced Gang System for FiveM (ESX) 🚨
📋 Overview
The Advanced Gang System for FiveM is a powerful, customizable script designed for ESX servers. This script allows gang leaders and members to manage their gangs in a dynamic, immersive, and fun way. Featuring gang creation, ranking systems, territories, finances, and more, this system is perfect for RP servers that want to provide players with an in-depth gang experience.

🔧 Ideal for RP Servers looking for a feature-rich gang management system to enhance roleplay!

⚙️ Features
👑 Gang Creation
Gang leaders can create their own gangs with custom names and labels. After creation, they can invite players to join their gang.

💼 Rank System
Assign ranks like Leader, Underboss, and Member with specific permissions and authority within the gang.

🌍 Gang Territories (Zones)
Set up custom gang territories with defined locations and radii. Claim your turf and protect it!

📲 Gang Menu
The gang menu allows gang leaders to:

📜 View and manage gang members

💰 Access the gang’s safe and manage finances

⚔️ Start gang wars and manage territories

ℹ️ See detailed gang info and more!

💌 Invitation System
Leaders can invite players to join their gang and assign them ranks based on their involvement and contributions.

🏦 Gang Safe
Each gang has a Gang Safe to store funds. Only authorized gang members can access and manage the safe’s contents.

🗃️ MySQL Database Integration
All gang data (e.g., gang name, members, finances) is securely stored in a MySQL database for persistence.

🌎 Multi-Language Support
The system comes with multi-language support (currently English 🇬🇧 and Czech 🇨🇿). Add more languages easily by modifying the localization files.

🔧 Installation
Requirements
FiveM server running the ESX framework

MySQL-Async resource for database support

Steps
Download and Extract the Script
Download the repository and place the gangsystem folder inside your resources/ directory on your FiveM server.

Configure the SQL Database
Run the provided gangsystem.sql script to create the necessary database tables.

Update the Server Configuration
Add the following line to your server.cfg to start the gang system:

lua
Copy
Edit
start gangsystem
Modify Configuration
Open the config.lua file and adjust settings like gang ranks, gang territories, and other system defaults.

Add More Languages (Optional)
To add more languages, simply duplicate the locales/en.lua file, translate it, and add the new language in the config.lua file.

📝 Commands
/creategang [gangname] [label]: Create a new gang with the specified name and label.

/invitegang [playerId]: Invite a player to join your gang.

/gangmenu: Open the gang management menu.

📸 Screenshots
Gang Menu UI

🤝 Contributing
Contributions are always welcome! Whether you have ideas for improvements, bug fixes, or new features, feel free to fork the repository and submit a pull request. Please make sure your changes align with the existing code style and are well-tested.

📜 License
This script is licensed under the MIT License. Feel free to use and modify it for personal or commercial use. 🔓

🙏 Acknowledgments
Huge thanks to the community and contributors who continue to make this project better! Your feedback, bug reports, and contributions help us make this script even more powerful. 💡
