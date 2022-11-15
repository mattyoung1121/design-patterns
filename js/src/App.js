import "./App.css";
import { ObservablePattern } from "./patterns/obersvable-pattern/observablePattern";
import { DecoratorPattern } from "./patterns/decorator-pattern/decoratorPattern";

function App() {
  return (
    <div className="App">
      <body>
        <DecoratorPattern />
      </body>
    </div>
  );
}

export default App;
