<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"/>
<section class="container">
<section class="row-fluid">
			<h3 class="box-header">
				Update
			</h3>
			<div class="box">
				<div class="span8">
           			
           			 <c:forEach items="${contactList}" var="contactList" varStatus="outer">
           			 <form class="form-horizontal" method="POST" action="/db/update/${contactList.id}">
										<fieldset>
											<div class="control-group">
												<label class="control-label">First Name</label>
												<div class="controls">
													<input type="text" class="span5" name="firstName" value="${contactList.firstName}">
													<span class="help-block">Enter First Name</span>
												</div>
											</div>
											<div class="control-group">
												<label class="control-label">Last Name</label>
												<div class="controls">
													<input type="text" class="span5" name="lastName" value="${contactList.lastName}">
													<span class="help-block">Enter Last Name</span>
												</div>
											</div>
											
											<div class="control-group">
												<div class="controls">
													<button class="btn btn-primary" type="submit">Save</button>
												</div>
											</div>
										</fieldset>
										</form>
										</c:forEach>
        </div>
    </div>
</section>
</section>
<jsp:include page="footer.jsp"/>