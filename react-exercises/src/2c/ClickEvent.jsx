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
