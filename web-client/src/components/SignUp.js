import { Link } from 'react-router-dom';
const SignUp = () => {
    return (
        <>
            <div className="form-container">
                <div className="form-header">
                    <svg className="form-logo" xmlns="http://www.w3.org/2000/svg" width="100" height="100" viewBox="0 0 630 630"><path d="M104.89,0h-.74A105,105,0,1,0,210,105v-1.14A105,105,0,0,0,104.89,0ZM210,105v.57A105,105,0,0,0,420,105v-1.14A105,105,0,0,0,210,105Zm210,0v.57A105,105,0,0,0,630,105v-1.14A105,105,0,0,0,420,105ZM104.89,210h-.74A105,105,0,1,0,210,315v-1.14A105,105,0,0,0,104.89,210ZM210,315v.57A105,105,0,0,0,420,315v-1.14A105,105,0,0,0,210,315Zm210,0v.57A105,105,0,0,0,630,315v-1.14A105,105,0,0,0,420,315ZM104.89,420h-.74A105,105,0,1,0,210,525v-1.14A105,105,0,0,0,104.89,420ZM210,525v.57A105,105,0,0,0,420,525v-1.14A105,105,0,0,0,210,525Zm210,0v.57A105,105,0,0,0,630,525v-1.14A105,105,0,0,0,420,525Z" transform="translate(0 0)" fill="#ffce1f" /></svg>
                    <p className="form-title">Sign Up</p>
                </div>
                <form className="form">
                    <div className="form-field">
                        <label htmlFor="name">Name</label>
                        <input type="text" id="name" />
                    </div>

                    <div className="form-field">
                        <label htmlFor="email">Email address</label>
                        <input type="email" id="email" />
                    </div>

                    <div className="form-field">
                        <label htmlFor="username">Username</label>
                        <input type="text" id="username" />
                    </div>

                    <div className="form-field">
                        <label htmlFor="password">Password</label>
                        <input type="password" id="password" />
                    </div>

                    <div className="form-field">
                        <label htmlFor="confirm-password">Confirm password</label>
                        <input type="password" id="confirm-password" />
                    </div>

                    <div className="form-links">
                        <Link className="link" to="/login">Login instead?</Link>
                        <input className="primary-button" type="submit" value="Sign Up" />
                    </div>
                </form>
            </div>
        </>
    );
}

export default SignUp;