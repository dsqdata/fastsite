<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>${fns:getConfig('productName')}</title>
    <meta name="decorator" content="bootsrap3"/>
    <style type="text/css">
        body {
            background: #edf1f5;
        }

    </style>
    <script type="text/javascript">
    </script>
</head>
<body>
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">首页</h4> </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li><a href="javascript:void(0)">数据分析系统</a></li>
                    <li class="active">首页 </li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <div class="row row-in">
                        <div class="col-lg-4 col-sm-4 row-in-br">
                            <ul class="col-in">
                                <li>
                                    <span class="circle circle-md bg-danger"><i class="ti-clipboard"></i></span>
                                </li>
                                <li class="col-last">
                                    <h3 class="counter text-right m-t-15">23</h3></li>
                                <li class="col-middle">
                                    <h4>Total projects</h4>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-4 col-sm-4 row-in-br  b-r-none">
                            <ul class="col-in">
                                <li>
                                    <span class="circle circle-md bg-info"><i class="ti-wallet"></i></span>
                                </li>
                                <li class="col-last">
                                    <h3 class="counter text-right m-t-15">76</h3></li>
                                <li class="col-middle">
                                    <h4>Total Earnings</h4>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-4 col-sm-4  b-0">
                            <ul class="col-in">
                                <li>
                                    <span class="circle circle-md bg-warning"><i class="fa fa-dollar"></i></span>
                                </li>
                                <li class="col-last">
                                    <h3 class="counter text-right m-t-15">83</h3></li>
                                <li class="col-middle">
                                    <h4>Total Earnings</h4>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <div class="white-box">
                    <h3 class="box-title">Daily Sales</h3>
                    <div class="text-right"> <span class="text-muted">Todays Income</span>
                        <h1><sup><i class="ti-arrow-up text-success"></i></sup> $12,000</h1> </div> <span class="text-success">20%</span>
                    <div class="progress m-b-0">
                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:20%;"> <span class="sr-only">20% Complete</span> </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <div class="white-box">
                    <h3 class="box-title">Weekly Sales</h3>
                    <div class="text-right"> <span class="text-muted">Weekly Income</span>
                        <h1><sup><i class="ti-arrow-down text-danger"></i></sup> $5,000</h1> </div> <span class="text-danger">30%</span>
                    <div class="progress m-b-0">
                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:30%;"> <span class="sr-only">230% Complete</span> </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <div class="white-box">
                    <h3 class="box-title">Monthly Sales</h3>
                    <div class="text-right"> <span class="text-muted">Monthly Income</span>
                        <h1><sup><i class="ti-arrow-up text-info"></i></sup> $10,000</h1> </div> <span class="text-info">60%</span>
                    <div class="progress m-b-0">
                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:60%;"> <span class="sr-only">20% Complete</span> </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                <div class="white-box">
                    <h3 class="box-title">Yearly Sales</h3>
                    <div class="text-right"> <span class="text-muted">Yearly Income</span>
                        <h1><sup><i class="ti-arrow-up text-inverse"></i></sup> $9,000</h1> </div> <span class="text-inverse">80%</span>
                    <div class="progress m-b-0">
                        <div class="progress-bar progress-bar-inverse" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:80%;"> <span class="sr-only">230% Complete</span> </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3 col-lg-3 col-xs-12 col-sm-3"> <img class="img-responsive" alt="user" src="${ctxStatic}/bootstrap/3.0.3/images/home/img1.jpg">
                <div class="white-box">
                    <div class="text-muted"><span class="m-r-10"><i class="icon-calender"></i> May 16</span> <a class="text-muted m-l-10" href="#"><i class="fa fa-heart-o"></i> 38</a></div>
                    <h3 class="m-t-20 m-b-20">Top 20 Models are on the ramp</h3>
                    <p>Titudin venenatis ipsum ac feugiat. Vestibulum ullamcorper quam.</p>
                    <button class="btn btn-success btn-rounded waves-effect waves-light m-t-20">Read more</button>
                </div>
            </div>
            <div class="col-md-3 col-lg-3 col-xs-12 col-sm-3"> <img class="img-responsive" alt="user" src="${ctxStatic}/bootstrap/3.0.3/images/home/img2.jpg">
                <div class="white-box">
                    <div class="text-muted"><span class="m-r-10"><i class="icon-calender"></i> May 16</span> <a class="text-muted m-l-10" href="#"><i class="fa fa-heart-o"></i> 38</a></div>
                    <h3 class="m-t-20 m-b-20">Top 20 Models are on the ramp</h3>
                    <p>Titudin venenatis ipsum ac feugiat. Vestibulum ullamcorper quam.</p>
                    <button class="btn btn-success btn-rounded waves-effect waves-light m-t-20">Read more</button>
                </div>
            </div>
            <div class="col-md-3 col-lg-3 col-xs-12 col-sm-3"> <img class="img-responsive" alt="user" src="${ctxStatic}/bootstrap/3.0.3/images/home/img3.jpg">
                <div class="white-box">
                    <div class="text-muted"><span class="m-r-10"><i class="icon-calender"></i> May 16</span> <a class="text-muted m-l-10" href="#"><i class="fa fa-heart-o"></i> 38</a></div>
                    <h3 class="m-t-20 m-b-20">Top 20 Models are on the ramp</h3>
                    <p>Titudin venenatis ipsum ac feugiat. Vestibulum ullamcorper quam.</p>
                    <button class="btn btn-success btn-rounded waves-effect waves-light m-t-20">Read more</button>
                </div>
            </div>
            <div class="col-md-3 col-lg-3 col-xs-12 col-sm-3"> <img class="img-responsive" alt="user" src="${ctxStatic}/bootstrap/3.0.3/images/home/img4.jpg">
                <div class="white-box">
                    <div class="text-muted"><span class="m-r-10"><i class="icon-calender"></i> May 16</span> <a class="text-muted m-l-10" href="#"><i class="fa fa-heart-o"></i> 38</a></div>
                    <h3 class="m-t-20 m-b-20">Top 20 Models are on the ramp</h3>
                    <p>Titudin venenatis ipsum ac feugiat. Vestibulum ullamcorper quam.</p>
                    <button class="btn btn-success btn-rounded waves-effect waves-light m-t-20">Read more</button>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 col-lg-6 col-sm-6">
                <div class="white-box">
                    <h3 class="box-title">Recent Comments</h3>
                    <div class="comment-center">
                        <div class="comment-body">
                            <div class="user-img"> <img src="${ctxStatic}/bootstrap/3.0.3/images/users/varun.jpg" alt="user" class="img-circle"></div>
                            <div class="mail-contnet">
                                <h5>Pavan kumar</h5><span class="time">10:20 AM   20  may 2016</span> <span class="label label-rouded label-info">PENDING</span>
                                <br/><span class="mail-desc">Donec ac condimentum massa. Etiam pellentesque pretium lacus. Phasellus ultricies dictum suscipit. Aenean commodo dui pellentesque molestie feugiat.</span> <a href="javacript:void(0)" class="btn btn btn-rounded btn-default btn-outline m-r-5"><i class="ti-check text-success m-r-5"></i>Approve</a><a href="javacript:void(0)" class="btn-rounded btn btn-default btn-outline"><i class="ti-close text-danger m-r-5"></i> Reject</a> </div>
                        </div>
                        <div class="comment-body">
                            <div class="user-img"> <img src="${ctxStatic}/bootstrap/3.0.3/images/users/varun.jpg" alt="user" class="img-circle"> </div>
                            <div class="mail-contnet">
                                <h5>Sonu Nigam</h5><span class="time">10:20 AM   20  may 2016</span> <span class="label label-rouded label-success">APPROVED</span>
                                <br/><span class="mail-desc">Donec ac condimentum massa. Etiam pellentesque pretium lacus. Phasellus ultricies dictum suscipit. Aenean commodo dui pellentesque molestie feugiat.</span> </div>
                        </div>
                        <div class="comment-body">
                            <div class="user-img"> <img src="${ctxStatic}/bootstrap/3.0.3/images/users/varun.jpg" alt="user" class="img-circle"> </div>
                            <div class="mail-contnet">
                                <h5>Arijit singh</h5><span class="time">10:20 AM   20  may 2016</span> <span class="label label-rouded label-danger">REJECTED</span>
                                <br/><span class="mail-desc">Donec ac condimentum massa. Etiam pellentesque pretium lacus. Phasellus ultricies dictum suscipit. Aenean commodo dui pellentesque molestie feugiat.</span> </div>
                        </div>
                        <div class="comment-body b-none">
                            <div class="user-img"> <img src="${ctxStatic}/bootstrap/3.0.3/images/users/varun.jpg" alt="user" class="img-circle"></div>
                            <div class="mail-contnet ">
                                <h5>Govinda kumar</h5><span class="time">10:20 AM   20  may 2016</span> <span class="label label-rouded label-info">PENDING</span>
                                <br/><span class="mail-desc">Donec ac condimentum massa. Etiam pellentesque pretium lacus. Phasellus ultricies dictum suscipit. Aenean commodo dui pellentesque molestie feugiat.</span> <a href="javacript:void(0)" class="btn btn btn-rounded btn-default btn-outline m-r-5"><i class="ti-check text-success m-r-5"></i>Approve</a><a href="javacript:void(0)" class="btn-rounded btn btn-default btn-outline"><i class="ti-close text-danger m-r-5"></i> Reject</a> </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-6 col-sm-6">
                <div class="white-box">
                    <h3 class="box-title">Recent sales
                        <div class="col-md-3 col-sm-4 col-xs-6 pull-right">
                            <select class="form-control pull-right row b-none">
                                <option>March 2017</option>
                                <option>April 2017</option>
                                <option>May 2017</option>
                                <option>June 2017</option>
                                <option>July 2017</option>
                            </select>
                        </div>
                    </h3>
                    <div class="row sales-report">
                        <div class="col-md-6 col-sm-6 col-xs-6">
                            <h2>March 2017</h2>
                            <p>SALES REPORT</p>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-6 ">
                            <h1 class="text-right text-success m-t-20">$3,690</h1> </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>NAME</th>
                                <th>STATUS</th>
                                <th>DATE</th>
                                <th>PRICE</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td class="txt-oflo">Elite admin</td>
                                <td><span class="label label-success label-rouded">SALE</span> </td>
                                <td class="txt-oflo">April 18, 2017</td>
                                <td><span class="text-success">$24</span></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td class="txt-oflo">Real Homes WP Theme</td>
                                <td><span class="label label-info label-rouded">EXTENDED</span></td>
                                <td class="txt-oflo">April 19, 2017</td>
                                <td><span class="text-info">$1250</span></td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td class="txt-oflo">Helping Hands WP Theme</td>
                                <td><span class="label label-success label-rouded">member</span></td>
                                <td class="txt-oflo">April 22, 2017</td>
                                <td><span class="text-success">$24</span></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td class="txt-oflo">Ample Admin</td>
                                <td><span class="label label-info label-rouded">EXTENDED</span></td>
                                <td class="txt-oflo">April 19, 2017</td>
                                <td><span class="text-info">$1250</span></td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td class="txt-oflo">Medical Pro WP Theme</td>
                                <td><span class="label label-danger label-rouded">TAX</span></td>
                                <td class="txt-oflo">April 20, 2017</td>
                                <td><span class="text-danger">-$24</span></td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td class="txt-oflo">Hosting press html</td>
                                <td><span class="label label-warning label-rouded">SALE</span></td>
                                <td class="txt-oflo">April 21, 2017</td>
                                <td><span class="text-success">$24</span></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td class="txt-oflo">Real Homes WP Theme</td>
                                <td><span class="label label-info label-rouded">EXTENDED</span></td>
                                <td class="txt-oflo">April 19, 2017</td>
                                <td><span class="text-info">$1250</span></td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td class="txt-oflo">Helping Hands WP Theme</td>
                                <td><span class="label label-success label-rouded">member</span></td>
                                <td class="txt-oflo">April 22, 2017</td>
                                <td><span class="text-success">$24</span></td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td class="txt-oflo">Digital Agency PSD</td>
                                <td><span class="label label-success label-rouded">SALE</span> </td>
                                <td class="txt-oflo">April 23, 2017</td>
                                <td><span class="text-danger">-$14</span></td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td class="txt-oflo">Helping Hands WP Theme</td>
                                <td><span class="label label-warning label-rouded">member</span></td>
                                <td class="txt-oflo">April 22, 2017</td>
                                <td><span class="text-success">$64</span></td>
                            </tr>
                            </tbody>
                        </table> <a href="#">Check all the sales</a> </div>
                </div>
            </div>
        </div>


    </div>
</body>
</html>