<!DOCTYPE html>
<html>

    <jsp:include page="WEB-INF/head_tag.jsp">
        <jsp:param name="title" value="Login" />
    </jsp:include>

<body>
    <nav class="container-fluid" id="main-nav-login">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p id="logo-large">Business Application</p>
                </div>
            </div>
        </div>
    </nav>

    <section class="container-fluid" style="background-color: #e9ebee; margin-top:-30px;">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <form action="ProcessLogin" method="post" id="body-login-form">
                        <label>Login to Business Application</label>
                        <div classs ="alert-danger">
                            ${sessionScope.message}
                        </div>
                        <input type="text" name="user-login-id" placeholder="Email address or phone number" />
                        <input type="password" name="user-login-password" placeholder="Password" />
                        <button type="submit" name="action" id="btn-login">Login</button>
                        <a href="/BMAGBOOK/register.jsp">Sign up for Business Application?</a>
                    </form>
                </div>
            </div>
        </div>
    </section>

    
</body>

</html>
