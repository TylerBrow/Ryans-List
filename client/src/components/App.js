import React, { Component } from 'react'
import { Provider } from 'react-redux'
import store from '../store'
import {BrowserRouter as Router, Route} from 'react-router-dom'
import '../styles/main.css'

import Main from './main'
import CurrentCategory from './category'
import Listing from './Listing'
import AddListing from './AddListing'

class App extends Component {
  render() {
    return (
      <Provider store={store}>
        <Router>
          <div id='container'>
            <Route exact path = '/' component={Main}/>
            <Route exact path='/:slug' component={CurrentCategory} />
            <Route path='/listing/:id' component={Listing} />
            <Route path='/add/:categoryId' component={AddListing} />
          </div>
        </Router>
      </Provider>
    )
  }
}

export default App
