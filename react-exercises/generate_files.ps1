$basePath = "c:\Users\raghu\OneDrive\Desktop\fsd\react-exercises\src"

function Create-File {
    param([string]$path, [string]$content)
    $dir = Split-Path $path
    if (!(Test-Path $dir)) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }
    Set-Content -Path $path -Value $content
}

# 2a
Create-File "$basePath\2a\Counter.jsx" @'
import React, { Component } from "react";
class Counter extends Component {
  constructor(props) {
    super(props);
    this.state = { count: 0 };
  }
  increment = () => {
    this.setState({ count: this.state.count + 1 });
  };
  render() {
    return (
      <div>
        <h2>React Counter</h2>
        <h3>Count: {this.state.count}</h3>
        <button onClick={this.increment}>Click Me</button>
      </div>
    );
  }
}
export default Counter;
'@

Create-File "$basePath\2a\App.jsx" @'
import React from 'react';
import Counter from './Counter';
function App() {
  return (
    <div>
      <Counter />
    </div>
  );
}
export default App;
'@

# 2b
Create-File "$basePath\2b\Counter.jsx" @'
import React, { useState } from 'react';
const Counter = () => {
  const [count, setCount] = useState(0);
  const increment = () => setCount(count + 1);
  const decrement = () => setCount(count - 1);
  const reset = () => setCount(0);
  return (
    <div>
      <h1>React Functional Counter</h1>
      <p>{count}</p>
      <div>
        <button onClick={increment}>➕ Increment</button>
        <button onClick={decrement}>➖ Decrement</button>
        <button onClick={reset}>🔄 Reset</button>
      </div>
    </div>
  );
};
export default Counter;
'@

Create-File "$basePath\2b\App.jsx" @'
import React from 'react';
import Counter from './Counter';
function App() {
  return (
    <div>
      <Counter />
    </div>
  );
}
export default App;
'@

# 2c
Create-File "$basePath\2c\ClickEvent.jsx" @'
import React from "react";
function ClickEvent() {
  const showMessage = () => {
    alert("Button Clicked!");
  };
  return (
    <div>
      <h2>React Button Click Event</h2>
      <button onClick={showMessage}>Click Me</button>
    </div>
  );
}
export default ClickEvent;
'@

Create-File "$basePath\2c\App.jsx" @'
import React from "react";
import ClickEvent from "./ClickEvent";
function App() {
  return (
    <div>
      <ClickEvent />
    </div>
  );
}
export default App;
'@

# 2d
Create-File "$basePath\2d\ConditionalRender.jsx" @'
import React, { useState } from "react";
function ConditionalRender() {
  const [show, setShow] = useState(false);
  return (
    <div>
      <h2>Conditional Rendering</h2>
      <button onClick={() => setShow(!show)}>Toggle</button>
      {show ? <h3>Welcome to React!</h3> : <h3>Component Hidden</h3>}
    </div>
  );
}
export default ConditionalRender;
'@

Create-File "$basePath\2d\App.jsx" @'
import React from "react";
import ConditionalRender from "./ConditionalRender";
function App() {
  return (
    <div>
      <ConditionalRender />
    </div>
  );
}
export default App;
'@

# 2e
Create-File "$basePath\2e\StringLiteral.jsx" @'
import React from "react";
function StringLiteral() {
  const message = "Welcome to React using String Literal!";
  return (
    <div>
      <h2>String Literal Example</h2>
      <h3>{message}</h3>
    </div>
  );
}
export default StringLiteral;
'@

Create-File "$basePath\2e\App.jsx" @'
import React from "react";
import StringLiteral from "./StringLiteral";
function App() {
  return (
    <div>
      <StringLiteral />
    </div>
  );
}
export default App;
'@

# 3a
Create-File "$basePath\3a\Counter.jsx" @'
import React, { useState } from "react";
function Counter() {
  const [count, setCount] = useState(0);
  const increment = () => { setCount(count + 1); };
  const decrement = () => { setCount(count - 1); };
  const reset = () => { setCount(0); };
  return (
    <div>
      <h2>React Counter using useState</h2>
      <h3>Count: {count}</h3>
      <button onClick={increment}>Increment</button>
      <button onClick={decrement}>Decrement</button>
      <button onClick={reset}>Reset</button>
    </div>
  );
}
export default Counter;
'@

Create-File "$basePath\3a\App.jsx" @'
import React from "react";
import Counter from "./Counter";
function App() {
  return (
    <div>
      <Counter />
    </div>
  );
}
export default App;
'@

# 3b
Create-File "$basePath\3b\FetchData.jsx" @'
import React, { useState, useEffect } from "react";
function FetchData() {
  const [users, setUsers] = useState([]);
  useEffect(() => {
    fetch("https://jsonplaceholder.typicode.com/users")
      .then(response => response.json())
      .then(data => setUsers(data));
  }, []);
  return (
    <div>
      <h2>User List</h2>
      <ul>
        {users.map(user => (
          <li key={user.id}>{user.name}</li>
        ))}
      </ul>
    </div>
  );
}
export default FetchData;
'@

Create-File "$basePath\3b\App.jsx" @'
import React from "react";
import FetchData from "./FetchData";
function App() {
  return (
    <div>
      <FetchData />
    </div>
  );
}
export default App;
'@

# 3c
Create-File "$basePath\3c\Welcome.jsx" @'
import React from "react";
function Welcome(props) {
  return (
    <div>
      <h2>Welcome Component</h2>
      <p>Hello, {props.name}!</p>
    </div>
  );
}
export default Welcome;
'@

Create-File "$basePath\3c\App.jsx" @'
import React from "react";
import Welcome from "./Welcome";
function App() {
  return (
    <div>
      <h1>Props Example</h1>
      <Welcome name="Lakshmi" />
    </div>
  );
}
export default App;
'@

# 3d
Create-File "$basePath\3d\Form.jsx" @'
import React, { useState } from "react";
function Form() {
  const [name, setName] = useState("");
  const handleSubmit = (event) => {
    event.preventDefault();
    alert("Name: " + name);
  };
  return (
    <div>
      <h2>React Form</h2>
      <form onSubmit={handleSubmit}>
        <input type="text" placeholder="Enter your name" value={name} onChange={(e) => setName(e.target.value)} />
        <br /><br />
        <button type="submit">Submit</button>
      </form>
    </div>
  );
}
export default Form;
'@

Create-File "$basePath\3d\App.jsx" @'
import React from "react";
import Form from "./Form";
function App() {
  return (
    <div>
      <Form />
    </div>
  );
}
export default App;
'@

# 3e
Create-File "$basePath\3e\StudentList.jsx" @'
import React from "react";
function StudentList() {
  const students = ["Lakshmi", "Ravi", "Anitha", "Kiran"];
  return (
    <div>
      <h2>Student List</h2>
      <ul>
        {students.map((student, index) => (
          <li key={index}>{student}</li>
        ))}
      </ul>
    </div>
  );
}
export default StudentList;
'@

Create-File "$basePath\3e\App.jsx" @'
import React from "react";
import StudentList from "./StudentList";
function App() {
  return (
    <div>
      <StudentList />
    </div>
  );
}
export default App;
'@

# main.jsx
Create-File "$basePath\main.jsx" @'
import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './3e/App'; // Change this line to test different exercises
import './index.css';

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
)
'@
