<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title><g:layoutTitle default="BookStore Grails"/></title>

	<asset:stylesheet src="application.css"/>
	<asset:javascript src="application.js"/>

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

	<g:layoutHead/>

</head>
<body>

<!-- nav bar -->

<nav class="navbar navbar-default" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-slide-dropdown">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${createLink(uri: '/')}">Grails BookStore</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-slide-dropdown">
			<ul class="nav navbar-nav">

				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Books <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><g:link controller="book" action="create">New</g:link></li>
						<li><g:link controller="book" action="index">List</g:link></li>
					</ul>
				</li>

				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Categories <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><g:link controller="category" action="create">New</g:link></li>
						<li><g:link controller="category" action="index">List</g:link></li>
					</ul>
				</li>

				%{--<li><a href="#">Link</a></li>--}%
				%{--<li><a href="#">Link</a></li>--}%

			</ul>

		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>

<div class="container">
	<div class="row">
		<div class="col-md-12">

			<g:layoutBody/>

		</div>
	</div>
</div>



</body>
</html>
