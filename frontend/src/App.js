import React, { useState, useEffect } from 'react';
import axios from 'axios';

const API_URL = "http://localhost:8081/api/todos";

function App() {
  const [todos, setTodos] = useState([]);
  const [input, setInput] = useState("");

  const load = () => axios.get(API_URL).then(res => setTodos(res.data));
  
  useEffect(() => { load(); }, []);

  const add = () => {
    axios.post(API_URL, { title: input }).then(() => {
      setInput("");
      load();
    });
  };

  const toggle = (todo) => {
    axios.put(`${API_URL}/${todo.id}`, { ...todo, completed: !todo.completed }).then(load);
  };

  const remove = (id) => axios.delete(`${API_URL}/${id}`).then(load);

  return (
    <div className="container">
      <h2>Todo List</h2>
      <input value={input} onChange={e => setInput(e.target.value)} />
      <button onClick={add}>Add</button>
      {todos.map(t => (
        <div key={t.id}>
          <input type="checkbox" checked={t.completed} onChange={() => toggle(t)} />
          <span>{t.title}</span>
          <button onClick={() => remove(t.id)}>Delete</button>
        </div>
      ))}
    </div>
  );
}

export default App;