import { BrowserRouter as Router, Route, Redirect } from 'react-router-dom';
import SignUp from './components/SignUp';

const App = () => {
    return (
        <Router>
            <Route path='/'>
                <Redirect to='/sign-up' />
            </Route>
            <Route path='/sign-up'>
                <SignUp />
            </Route>
        </Router>
    );
}

export default App;
