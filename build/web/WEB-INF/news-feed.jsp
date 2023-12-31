<!DOCTYPE html>
<html>

<jsp:include page="/WEB-INF/head_tag.jsp">
        <jsp:param name="title" value="News Feed" />
    </jsp:include>

<body>
    <%@include file="/WEB-INF/top_nav.jspf" %>

    <section class="container-fluid" id="main-body">
        <div class="row no-pad">
            <div class="col-md-2 no-pad">
                <div class="left-tool-section">
                    <a href="">
                        <img class="avatar-small" 
                             src="${pageContext.servletContext.contextPath}/ProcessImage?emailOrPhone=${sessionScope.user.emailOrPhone}"> 
                        ${sessionScope.user.firstName}
                        ${sessionScope.user.lastName}
                    </a>
                    <a href="FrontController?action=view-profile"><i class="fa fa-pencil" aria-hidden="true"></i> 
                        Edit Profile</a>
                </div>

            </div>
            <div class="col-md-5 no-pad">
                <div class="middle-section" id="post-form">
                    <p>Database management function UIs display here</p>
                    <p>Its responsive with any code you insert so don't worry</p>
                    <p>Example below</p>
                </div>

                <div class="middle-section user-post">
                    <div class="user-post-header">
                        <img src="img/user.jpg">
                        <span>
                            <a href="/">Nguyễn Quốc Bảo</a>
                            <p class="help-block">22hrs <i class="fa fa-globe" aria-hidden="true"></i></p>
                        </span>
                    </div>
                    <div class="user-post-body">
                        Mưa gió bão bùng, làm bát phở là ấm lòng. P/S: bác sĩ là người dưng, dạ dày mới là người thân. :v
                        <img src="img/sample.jpg">
                    </div>

                    <div class="user-post-tool">
                        <a href=""><i class="fa fa-thumbs-up" aria-hidden="true"></i> Like</a>
                        <a href=""><i class="fa fa-comment" aria-hidden="true"></i> Comment</a>
                        <a href=""><i class="fa fa-share" aria-hidden="true"></i> Share</a>
                    </div>
                    <div class="user-post-info">
                        <span class="like-icon"><i class="fa fa-thumbs-up" aria-hidden="true"></i></span>
                        <a href="">Lê Thị Cà Chua, Trần Văn Ớt and 18 Others</a>
                    </div>

                    <div class="user-post-comment-list">
                        <div class="user-post-comment-item">
                            <img src="img/user-comment1.jpg">
                            <span>
                                <a href="/">Cà Chua</a> Mỡ ghê quá, ăn chắc ói chết
                                <div class="help-block">
                                    <a href="#">Like</a>.
                                    <a href="#">Reply</a>.
                                    21 hrs
                                </div>
                            </span>
                            <div class="user-post-reply-item">
                                <i class="fa fa-share" aria-hidden="true"></i>
                                <img src="img/user-comment3.jpg">
                                <a href="">Nguyễn Loan . 20 replies</a>
                            </div>
                        </div>
                        <div class="user-post-comment-item">
                            <img src="img/user_comment2.jpg">
                            <span>
                                <a href="/">Trần Văn Ớt</a> Tô này ăn xong ba ngày sau chưa dám ăn lại
                                <div class="help-block">
                                    <a href="#">Like</a>.
                                    <a href="#">Reply</a>.
                                    21 hrs
                                </div>
                            </span>
                        </div>
                        <div class="user-post-comment-item">
                            <img src="img/user-comment3.jpg">
                            <span>
                                <a href="/">Hạ Nhi</a> Tô này ăn xong ba ngày sau chưa dám ăn lại
                                <div class="help-block">
                                    <a href="#">Like</a>.
                                    <a href="#">Reply</a>.
                                    <span class="like-icon-small"><i class="fa fa-thumbs-up" aria-hidden="true"></i></span>. 21 hrs
                        </div>
                        </span>
                    </div>
                </div>

                <div class="user-post-reply-form">
                    <img src="img/avatar.jpg">
                    <div class="user-post-reply-editor" contenteditable="true">

                    </div>
                    <span>
                            <i class="fa fa-picture-o" aria-hidden="true"></i>
                            <input type="file" class="masked-file-input" name="upload-2"/>
                        </span>
                    <span>
                            <i class="fa fa-smile-o" aria-hidden="true"></i>
                        </span>

                </div>
            </div>
        </div>
        
        
        </div>
        <section id="chat-box">
            <div id="chat-box-header">
                <a href="/">Cà Chua</a>
                <span>
                    <i class="fa fa-plus" aria-hidden="true"></i>
                    <i class="fa fa-camera" aria-hidden="true"></i>
                    <i class="fa fa-volume-control-phone" aria-hidden="true"></i>
                    <i class="fa fa-cog" aria-hidden="true"></i>
                    <i id="close-chat-box-button" class="fa fa-times" aria-hidden="true"></i>
                </span>
            </div>
            <div id="chat-box-content-wrapper">
                <div id="chat-box-content">
                </div>
                <div id="chat-box-editor" contenteditable="true"></div>
            </div>
            <div id="chat-box-editor-tool">
                <span>
                    <i class="fa fa-picture-o" aria-hidden="true"></i>
                    <i class="fa fa-paperclip" aria-hidden="true"></i>
                    <i class="fa fa-smile-o" aria-hidden="true"></i>
                    <i class="fa fa-hand-peace-o" aria-hidden="true"></i>
                </span>
                <span>
                    <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                </span>
            </div>
        </section>
    </section>

    <!--Confirm dialog -This must be the child of body-->
    <div id="dialog-confirm">
        <div id="dialog-confirm-header">
            <a href="#" id="dc-btn-close">Close</a>
        </div>
        <div id="dialog-confirm-body">
            <p>Are you sure you want to remove this friend?</p>
            <p>Becareful! Because you will not be able to see this person again</p>
            <p>Why don't you take some time to think about this action?</p>
        </div>
        <div id="dialog-confirm-footer">
            <a href="#" id="dc-btn-yes">Yes, I do</a>
            <a href="#" id="dc-btn-no">No, This is a mistake</a>
            <a href="#" id="dc-btn-cancel">Cancel</a>
        </div>
    </div>

    <script>
        $(function() {
            var viewportHeight = $(window).height();
            $("#online-list ul").css("max-height", viewportHeight);
        });
    </script>
    <script src="js/app.js"></script>
</body>

</html>
