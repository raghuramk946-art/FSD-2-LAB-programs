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
