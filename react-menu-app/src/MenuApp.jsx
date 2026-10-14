import React, { useState } from 'react';
import Ex2a from './2a/App';
import Ex2b from './2b/App';
import Ex2c from './2c/App';
import Ex2d from './2d/App';
import Ex2e from './2e/App';
import Ex3a from './3a/App';
import Ex3b from './3b/App';
import Ex3c from './3c/App';
import Ex3d from './3d/App';
import Ex3e from './3e/App';

const exercises = {
  '2a': { name: '2a - Class Counter', component: Ex2a },
  '2b': { name: '2b - Functional Counter', component: Ex2b },
  '2c': { name: '2c - Button Click Event', component: Ex2c },
  '2d': { name: '2d - Conditional Render', component: Ex2d },
  '2e': { name: '2e - String Literal', component: Ex2e },
  '3a': { name: '3a - useState Counter', component: Ex3a },
  '3b': { name: '3b - useEffect Fetch', component: Ex3b },
  '3c': { name: '3c - Props', component: Ex3c },
  '3d': { name: '3d - Forms', component: Ex3d },
  '3e': { name: '3e - map()', component: Ex3e },
};

function MenuApp() {
  const [currentEx, setCurrentEx] = useState(null);

  return (
    <div style={{ display: 'flex', fontFamily: 'sans-serif', height: '100vh' }}>
      <div style={{ width: '250px', borderRight: '1px solid #ccc', padding: '20px', overflowY: 'auto' }}>
        <h3>React Exercises Menu</h3>
        {Object.keys(exercises).map((key) => (
          <button 
            key={key} 
            onClick={() => setCurrentEx(key)}
            style={{ 
              display: 'block', 
              width: '100%', 
              margin: '5px 0', 
              padding: '10px', 
              cursor: 'pointer',
              backgroundColor: currentEx === key ? '#007bff' : '#f0f0f0',
              color: currentEx === key ? 'white' : 'black',
              border: 'none',
              borderRadius: '5px',
              textAlign: 'left',
              fontWeight: 'bold'
            }}
          >
            {exercises[key].name}
          </button>
        ))}
      </div>
      <div style={{ padding: '20px', flex: 1, overflowY: 'auto' }}>
        {currentEx ? (
          <div>
            <h2 style={{ color: '#007bff' }}>Running: {exercises[currentEx].name}</h2>
            <hr style={{ marginBottom: '20px' }} />
            {React.createElement(exercises[currentEx].component)}
          </div>
        ) : (
          <h2>Select an exercise from the left menu to run it.</h2>
        )}
      </div>
    </div>
  );
}

export default MenuApp;
