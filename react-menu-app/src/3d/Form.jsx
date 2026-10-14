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
