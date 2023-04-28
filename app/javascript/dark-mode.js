const toggleDarkMode = () => {
    const body = document.querySelector("body")
    const darkModeToggleButton = document.querySelector("#dark-mode-toggle-button")
  
    body.classList.toggle("dark-mode")
    darkModeToggleButton.innerHTML = body.classList.contains("dark-mode") ? "Light Mode" : "Dark Mode"
  }
  
  const darkModeToggleButton = document.querySelector("#dark-mode-toggle-button")
  darkModeToggleButton.addEventListener("click", toggleDarkMode)