(function () {
    const notificationArea = document.getElementById("notificationArea");
  
    const iconMap = {
      info: "fas fa-info-circle",
      success: "fas fa-check-circle",
      error: "fas fa-times-circle",
      warning: "fas fa-exclamation-triangle",
      system: "fas fa-cog",
    };
  
    // Dynamically set the position based on configuration
    window.addEventListener("message", function (event) {
      const data = event.data;
      if (data.action === "showNotification") {
        setNotificationPosition(data.position || "top-right"); // Fallback to top-right
        showNotification(data.title, data.message, data.type || "info", data.duration, data.position);
      }
    });
  
    function setNotificationPosition(position) {
      notificationArea.className = ""; // Reset classes
      notificationArea.classList.add(position); // Apply the new position
    }
  
    function showNotification(title, message, type, duration, position) {
      const notif = document.createElement("div");
      notif.className = `notification ${type} ${position}`;
  
      const iconDiv = document.createElement("div");
      iconDiv.className = "notification-icon";
      const iconClass = iconMap[type] || iconMap.info;
      iconDiv.innerHTML = `<i class="${iconClass}"></i>`;
  
      const messageDiv = document.createElement("div");
      messageDiv.className = "notification-message";
      const header = document.createElement("h3");
      header.textContent = title || "Notification";
      const para = document.createElement("p");
      para.textContent = message || "";
  
      messageDiv.appendChild(header);
      messageDiv.appendChild(para);
  
      notif.appendChild(iconDiv);
      notif.appendChild(messageDiv);
      notificationArea.appendChild(notif);
  
      notif.getBoundingClientRect(); // Trigger reflow for animation
  
      requestAnimationFrame(() => {
        notif.classList.add("visible");
      });
  
      setTimeout(() => {
        hideNotification(notif, position);
      }, duration || 4000);
    }
  
    function hideNotification(notif, position) {
      // Add the 'exiting' class to trigger the exit animation
      notif.classList.add("exiting");
  
      // Wait for the animation to complete before removing the element
      setTimeout(() => {
        if (notif.parentNode) {
          notif.parentNode.removeChild(notif);
        }
      }, 500); // Match the duration of the exit animation
    }
  
    window.showNotification = showNotification;
  })();