<!DOCTYPE html>
<html lang="en" ng-app="crudApp">
	<head>
		<title>${title}</title>
		<meta charset='UTF-8'>
		<meta name='viewport' content='width=device-width, initial-scale=1.0'>
		<link rel='stylesheet' type='text/css' href='css/bootstrap.min.css'>
		<link rel='stylesheet' type='text/css' href='css/bootstrap-side-nav.css'>
	</head>
	<body>
		<!-- Standard bootstrap navbar fixed top -->
		<nav class='navbar navbar-default navbar-fixed-top'>
			<div class='container-fluid'>
				<div class='navbar-header'>
					<!--a href='example.html'><img src='img/logo.png' style='width:256px;height:50px;'></a-->
					V-Up Solutions
					<button type='button' class='navbar-toggle collapsed' data-toggle='collapse' data-target='#navbar' aria-expanded='false' aria-controls='navbar'>
					<span class='sr-only'>Toggle navigation</span>
					<span class='icon-bar'></span>
					<span class='icon-bar'></span>
					<span class='icon-bar'></span>
					</button>
				</div>
				<div id='navbar' class='navbar-collapse collapse' aria-expanded='false'>
					<ul class='nav navbar-nav side-nav'>
						<li><a href='#/'><i class='glyphicon glyphicon-home'></i> Home</a></li>
						<li><a href='#/admin'><i class='glyphicon glyphicon-dashboard'></i> Administration</a></li>
						<li><a href='#/quality' onclick='activeBtn(this);'><i class='glyphicon glyphicon-tag'></i> Qualite</a></li>
						<li><a href='#/production' onclick='activeBtn(this);'><i class='glyphicon glyphicon-envelope'></i>Production</a></li>
						<li><a href='#' onclick='activeBtn(this);'><i class='glyphicon glyphicon-pencil'></i> Edit</a></li>
						<li class='dropdown'>
							<a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>
							<i class='glyphicon glyphicon-book'></i> Dropdown Menu <span class='caret'></span>
							</a>
							<ul class='dropdown-menu'>
								<li><a href='#' onclick='activeBtn(this);'><i class='glyphicon glyphicon-play-circle'></i> Sub Menu 1</a></li>
								<li><a href='#' onclick='activeBtn(this);'><i class='glyphicon glyphicon-play-circle'></i> Sub Menu 2</a></li>
								<li><a href='#' onclick='activeBtn(this);'><i class='glyphicon glyphicon-play-circle'></i> Sub Menu 3</a></li>
							</ul>
						</li>
						<li class='side-nav-padding'></li>
						<!-- ADD THIS IN HERE IF YOU'RE NOT USING navbar-right
										|
										|
										v
										
						<li class='right-nav-padding'></li>
						
										^
										|
										|
						ADD THIS IN HERE IF YOU'RE NOT USING navbar-right -->
					</ul>
					<ul class='nav navbar-nav navbar-right'>
						<li class='dropdown'>
							<a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>
							<i class='glyphicon glyphicon-user'></i> Username <span class='caret'></span>
							</a>
							<ul class='dropdown-menu'>
								<li><a href='#' onclick='activeBtn(this);'><i class='glyphicon glyphicon-user'></i> Profile</a></li>
								<li><a href='#' onclick='activeBtn(this);'><i class='glyphicon glyphicon-cog'></i> Account settings</a></li>
								<li role='separator' class='divider'></li>
								<li><a href='#' onclick='activeBtn(this);'><i class='glyphicon glyphicon-info-sign'></i> Help</a></li>
								<li role='separator' class='divider'></li>
								<li><a href='#' onclick='activeBtn(this);'><i class='glyphicon glyphicon-log-out'></i> Log out</a></li>
							</ul>
						</li>
						<!-- REQUIRED IF YOU'RE USING navbar-right -->
						<li class='right-nav-padding'></li>
						<!-- REQUIRED IF YOU'RE USING navbar-right -->
					</ul>
				</div>
			</div>
		</nav>
		
		     <div class='wrapper'>
		       <!-- Page Content -->
			     <div ui-view></div>
		       <!-- Page Content -->
		     </div>
		
            <script src="js/lib/angular.min.js" ></script>
            <script src="js/lib/angular-ui-router.min.js" ></script>
            <script type='text/javascript' src='js/lib/jquery-1.12.4.min.js'></script>
		    <script type='text/javascript' src='js/lib/bootstrap.min.js'></script>
            <script src="js/lib/localforage.min.js" ></script>
            <script src="js/lib/ngStorage.min.js"></script>
            <script src="js/app/app.js"></script>
            <script src="js/service/UserService.js"></script>
            <script src="js/controller/UserController.js"></script>
	</body>
	<script type='text/javascript'>
		function activeBtn(elm) {
			$("li").removeClass("active");
			$(elm).parent().addClass("active");
		}
	</script>
</html>