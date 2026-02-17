import React, { useState, useEffect } from 'react';
import axios from 'axios';

const API_URL = "http://localhost:8081/api/todos";

function App() {
  const [todos, setTodos] = useState([]);
  const [input, setInput] = useState("");

  const load = () => axios.get(API_URL).then(res => setTodos(res.data));
  
  useEffect(() => { load(); }, []);

  const add = () => {
    if (input.trim()) {
      axios.post(API_URL, { title: input, description: input }).then(() => {
        setInput("");
        load();
      });
    }
  };

  const toggle = (todo) => {
    axios.put(`${API_URL}/${todo.id}`, { ...todo, completed: !todo.completed }).then(load);
  };

  const remove = (id) => axios.delete(`${API_URL}/${id}`).then(load);

  return (
    <div className="container mt-5">
      <div className="row justify-content-center">
        <div className="col-md-8 col-lg-6">
          <div className="card shadow">
            <div className="card-header bg-primary text-white">
              <h2 className="mb-0">
                <i className="bi bi-check-circle me-2"></i>
                Todo List
              </h2>
            </div>
            <div className="card-body">
              <div className="input-group mb-4">
                <input
                  type="text"
                  className="form-control"
                  placeholder="Add a new todo..."
                  value={input}
                  onChange={e => setInput(e.target.value)}
                  onKeyPress={e => e.key === 'Enter' && add()}
                />
                <button className="btn btn-success" onClick={add}>
                  <i className="bi bi-plus-circle me-1"></i>
                  Add
                </button>
              </div>

              {todos.length === 0 ? (
                <div className="text-center text-muted py-4">
                  <i className="bi bi-inbox" style={{fontSize: '3rem'}}></i>
                  <p className="mt-2">No todos yet. Add one above!</p>
                </div>
              ) : (
                <div className="list-group">
                  {todos.map(t => (
                    <div key={t.id} className="list-group-item d-flex align-items-center">
                      <input
                        type="checkbox"
                        className="form-check-input me-3"
                        checked={t.completed}
                        onChange={() => toggle(t)}
                      />
                      <div className="flex-grow-1">
                        <h6 className={`mb-1 ${t.completed ? 'text-decoration-line-through text-muted' : ''}`}>
                          {t.title}
                        </h6>
                        {t.description && (
                          <small className={`d-block ${t.completed ? 'text-muted' : 'text-secondary'}`}>
                            {t.description}
                          </small>
                        )}
                      </div>
                      <button
                        className="btn btn-sm btn-outline-danger"
                        onClick={() => remove(t.id)}
                      >
                        <i className="bi bi-trash"></i>
                      </button>
                    </div>
                  ))}
                </div>
              )}
            </div>
            <div className="card-footer text-muted">
              <small>
                {todos.filter(t => !t.completed).length} of {todos.length} tasks remaining
              </small>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default App;