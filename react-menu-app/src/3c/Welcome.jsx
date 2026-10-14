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
