<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
 <nav
		aria-label="breadcrumb" role="navigation"  >
	<ol class="breadcrumb">
		
		<li class="breadcrumb-item active" aria-current="page">Add Exam</li>
	</ol>
	</nav>

<div col-md-5 img-thumbnail">
           <div id="feedback"> <div class="container">
<div class="col-md-5">
    <div class="form-area">  
       <sf:form method="post" action="${pageContext.request.contextPath}/ctl/exam"  modelAttribute="form">
        <br style="clear:both">
        <sf:hidden path="id"/>
                    <h3 style="margin-bottom: 15px; text-align: left: ;">Registration</h3>
                    <b><%@ include file="businessMessage.jsp"%></b>
                		
							<div class="form-group">
								<s:bind path="examName">
								<label >Exam Name:</label> 
								<sf:input path="${status.expression}" placeholder="Enter Exam Name" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
							</s:bind>
							</div>
													
							
							<div class="form-group">
								<s:bind path="examDate">
								<label >Exam Date:</label> 
								<sf:input path="${status.expression}" id="datepicker1" placeholder="Enter Exam Date" class="form-control" />
									<font color="red" style="font-size: 13px"><sf:errors
											path="${status.expression}" /></font>
							</s:bind>
							</div>
							
							
        					 <input type="submit" name="operation"
								class="btn btn-primary pull-right" value="Save">or<input type="submit" name="operation"
								class="btn btn-primary pull-right" value="Reset">
        </sf:form>
    </div>
</div>
</div> </div> <!--feedback-->
<br>

	