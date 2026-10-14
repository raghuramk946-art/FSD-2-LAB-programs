# FSD-II Lab Programs

This repository contains full implementations of Full Stack Development II (FSD-II) laboratory exercises covering Modern JavaScript, DOM manipulation, and React.js.

---

## 📁 Repository Structure

### 1. Standalone Programs (Double-click to Run in Browser)
Every exercise includes a standalone HTML/JS file that runs directly in your browser without requiring build tools or terminal commands:

| Folder | Exercise | Description |
|---|---|---|
| `1/` | Exercise 1a | Link external JavaScript file with HTML |
| `1b/` | Exercise 1b | DOM element selection using various selectors |
| `1c/` | Exercise 1c | Event listeners implementation |
| `1d/` | Exercise 1d | Handle button click events |
| `1e/` | Exercise 1e | Three types of functions (Declaration, Expression, Arrow) |
| `2a/` | Exercise 2a | React Counter using Class Components |
| `2b/` | Exercise 2b | React Counter using Functional Components |
| `2c/` | Exercise 2c | Button click events in React functional component |
| `2d/` | Exercise 2d | Conditional rendering in React |
| `2e/` | Exercise 2e | String literals in React |
| `3a/` | Exercise 3a | Counter button using React `useState` hook |
| `3b/` | Exercise 3b | Fetch API data using React `useEffect` hook |
| `3c/` | Exercise 3c | Component communication using React Props |
| `3d/` | Exercise 3d | Form handling in React |
| `3e/` | Exercise 3e | Iterative rendering using `map()` function |

---

### 2. React Applications

#### `react-menu-app/` (Interactive Dashboard)
A Vite + React application providing a single sidebar menu to run and test all React exercises (2a through 3e) with a click:
```bash
cd react-menu-app
npm install
npm run dev
```

#### `react-exercises/` (Modular React Project)
Source components and App wrappers for each individual React exercise in `src/`.
```bash
cd react-exercises
npm install
npm run dev
```

---

## 🚀 How to Run

### Method 1: Instant Browser View (Easiest)
Navigate into any exercise folder (e.g., `1/`, `2a/`, `3a/`) and double-click `index.html` (or `Functionindex.html` for 1e).

### Method 2: Interactive Menu App
1. Open terminal in `react-menu-app`:
   ```bash
   cd react-menu-app
   npm run dev
   ```
2. Open `http://localhost:5173/` in your browser.
