<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
 
 
 
<div id="left-pane" class="col-md-8">

	<h2><spring:message code="recent.activities" /></h2>
	<hr>
	  <div class="row col-block">
	  	<div class="col-md-4">
	  		
	  		<img src="images/boat1-130.jpg" class="img-responsive" alt="ISDA Logo"/>
	  	</div>
	  	<div class="col-md-8">
	  		<p>美国海岸卫队说，一名驾驶员开着一架Cirrus单引擎飞机的飞行员于8月30日在空中失去知觉，而他的飞机失控之后先是闯入首都华盛顿的禁飞区，迫使战机升空拦截，而那架小飞机随后因燃料用尽而坠入大西洋。那架小飞机上当时只有驾驶员一人。</p>
	  		<a class="btn btn-default" href="#" role="button">详细内容 »</a>
	  	</div>
	  </div>
	  <hr>
	
	  <div class="row col-block">
	  	<div class="col-md-4">
	  		
	  		<img src="images/baozi1-130.jpg" class="img-responsive" alt="ISDA Logo"/>
	  	</div>
	  	<div class="col-md-8">
	  		<p>美国海岸卫队说，一名驾驶员开着一架Cirrus单引擎飞机的飞行员于8月30日在空中失去知觉，而他的飞机失控之后先是闯入首都华盛顿的禁飞区，迫使战机升空拦截。，而那架小飞机随后因燃料用尽而坠入大西洋。</p>
	  		<a class="btn btn-default" href="#" role="button">详细内容 »</a>
	  	</div>
	  </div>
	  <hr>
	  
	  	  <div class="row col-block">
	  	<div class="col-md-4">
	  		
	  		<img src="images/boat1-130.jpg" class="img-responsive" alt="ISDA Logo"/>
	  	</div>
	  	<div class="col-md-8">
	  		<p>美国海岸卫队说，一名驾驶员开着一架Cirrus单引擎飞机的飞行员于8月30日在空中失去知觉，而他的飞机失控之后先是闯入首都华盛顿的禁飞区，迫使战机升空拦截，而那架小飞机随后因燃料用尽而坠入大西洋。那架小飞机上当时只有驾驶员一人。</p>
	  		<a class="btn btn-default" href="#" role="button">详细内容 »</a>
	  	</div>
	  </div>
	  <hr>
	
	  <div class="row col-block">
	  	<div class="col-md-4">
	  		
	  		<img src="images/baozi1-130.jpg" class="img-responsive" alt="ISDA Logo"/>
	  	</div>
	  	<div class="col-md-8">
	  		<p>一名驾驶员开着一架Cirrus单引擎飞机的飞行员于8月30日在空中失去知觉，而他的飞机失控之后先是闯入首都华盛顿的禁飞区，迫使战机升空拦截，而那架小飞机随后因燃料用尽而坠入大西洋。</p>
	  		<a class="btn btn-default" href="#" role="button">详细内容 »</a>
	  	</div>
	  </div>
	  <hr>
	  
</div>

		<div id="right-pane" class="col-md-4">

			<h2><spring:message code="management.team" /></h2>
			<c:forEach var="staff" items="${managementTeam}" varStatus="status">
				<hr>
			  	<div class="row col-block">
			  		<div class="col-md-4">
			  			<img src="uploads/staff/judy-130.jpg" class="img-responsive" alt="${staff.firstName} ${staff.lastName}"/>
			  		</div>
				  	<div class="col-md-8">
				  		<h4>${staff.title}</h4>
				  		<h4>${staff.firstName} ${staff.lastName}</h4>
				  		<p>Tel: ${staff.phone}</p>
				  		<p>Email: ${staff.email}</p>
				  	</div>
			  </div>
			</c:forEach>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>