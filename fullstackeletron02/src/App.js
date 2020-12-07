import React from 'react';
import {BrowserRouter} from 'react-router-dom';

import Menu from './Components/Menu/Menu.js';
import Footer from './Components/Footer/Footer.js';
import Rotas from './Rotas.js';
import './App.css'

// import './global.css';

 class App extends React.Component {
    render(){

        return(
            <>
                <BrowserRouter>
                    <header>
                        <Menu/>
                    </header>
                    <main>
                        <Rotas/>
                    </main>
                    <footer>
                        <Footer/>
                    </footer>
                </BrowserRouter>
            </>
        );
    }
}

export default App;
