import { BrowserRouter as Router, Route } from 'react-router-dom';
import SignUp from './components/SignUp';

const App = () => {
    return (
        <Router>
            <Route path='/sign-up'>
                <SignUp />
            </Route>
        </Router>
    );
}

export default App;
