# Assignment Submission Reminder App

## Description
This app tracks student assignment submissions and reminds those who haven't submitted yet.

## Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/submission_reminder_app_yourgithubusername.git  
   cd submission_reminder_app_yourgithubusername  
   ```

2. Run the setup:
   ```bash
   chmod +x create_environment.sh  
   ./create_environment.sh  
   ```
   Enter your name when prompted.

## Usage
1. Navigate to the directory:
   ```bash
   cd submission_reminder_{yourName}  
   ```

2. Start the application:
   ```bash
   ./startup.sh  
   ```

## Update Assignment
To update the assignment name stored in the configuration file:

1. Run the update script:
   ```bash
   ../copilot_shell_script.sh
   ```

2. The script will:
   - Prompt you to enter a new assignment name
   - Automatically find your `config/config.env` file inside `submission_reminder_{yourName}`
   - Update the `ASSIGNMENT` value on line 2 using `sed`

> After updating, rerun `./startup.sh` to apply the changes.

## Structure
```
submission_reminder_{yourName}/  
├── app/               # Main script  
├── modules/           # Helper functions  
├── assets/            # Submission records  
├── config/            # Settings  
└── startup.sh         # Launch script  
```

## Submission Format
CSV format in `submissions.txt`:
```
student, assignment, status  
```

Example:
```
Chinemerem, Shell Navigation, not submitted  
```

## Configuration
Edit `config.env` to modify assignment details.

## How It Works
1. Reads submission records  
2. Identifies pending submissions  
3. Displays reminders
