import "./App.css";
import { Suspense, lazy } from "react";

const CarsComponent = lazy(() =>
  import("./Cars.js" /* webpackPrefetch: true */)
);

const LoadingScreen = () => {
  return <div>Loading...</div>
}

function App() {
  return (
    <Suspense fallback={<LoadingScreen/>}>
      <div className="header">React 18 SSR example with Pipeable stream</div>
      <CarsComponent />
    </Suspense>
  );
}

export default App;
