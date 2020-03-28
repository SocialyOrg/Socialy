
import * as React from "react"
import ReactDOM from "react-dom"

import { Route, Switch } from "react-router"
import { BrowserRouter } from "react-router-dom"

import HomePage from "./components/HomePage"

ReactDOM.render(
  <BrowserRouter>
    <Switch>
      <Route exact path="/" component={HomePage} />
    </Switch>
  </BrowserRouter>,
  document.getElementById('root')
)

