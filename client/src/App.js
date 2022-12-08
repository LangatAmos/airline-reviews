import React, { useEffect, useState } from "react";
import { Routes, Route } from "react-router-dom";
import NavBar from "./components/NavBar";
import Login from "./pages/Login";
import AirlinesPage from "./pages/AirlinesPage";
import AirlineDetails from "./pages/AirlineDetails";

function App() {
  const [user, setUser] = useState(null);
  useEffect(() => {
    // auto-login
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);

  if (!user) return <Login onLogin={setUser} />;

  return (
    <>
      <NavBar user={user} setUser={setUser} />
      <main>
        <Routes>
          <Route path='/airlinespage' element={ <AirlinesPage user = {user}/>}/>
          <Route path='/airlines/:id' element={<AirlineDetails user={user}/>}/>
        </Routes>
      </main>
    </>
  );
}

export default App;