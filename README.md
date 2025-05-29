# dc-notify

`dc-notify` is a standalone notification system for FiveM servers. It allows developers to display customizable notifications to players with ease.

## Features
- Simple and lightweight.
- Fully customizable notification messages.
- Easy to integrate into your existing scripts.

## Installation
1. Download or clone this repository into your server's `resources` folder.
2. Ensure the resource is started in your `server.cfg`:
    ```cfg
    ensure dc-notify
    ```

## Usage
To display a notification, use the following export in your script:

```lua
exports['dc-notify']:ShowNotification('Title', 'Message', 'info', 5000)
```

### Parameters:
- **Title**: The title of the notification.
- **Message**: The main content of the notification.
- **Type**: The type of notification (e.g., `info`, `success`, `error`, etc.).
- **Duration**: The duration the notification will be displayed (in milliseconds).

### Example:
```lua
exports['dc-notify']:ShowNotification('Welcome', 'You have joined the server!', 'success', 5000)
```
