isda-java
=========

isda java application

about composite key
https://developer.jboss.org/wiki/EqualsAndHashCode?_sscc=t
http://stackoverflow.com/questions/3585034/how-to-map-a-composite-key-with-hibernate
http://docs.jboss.org/hibernate/core/4.0/manual/en-US/html/persistent-classes.html#persistent-classes-equalshashcode

<bean class="org.springframework.web.servlet.handler.SimpleUrlHandlerMapping">
    <property name="alwaysUseFullPath" value="true"/>
    <property name="mappings">
        <props>
            <prop key="/static/**">staticResources</prop>
        </props>
    </property>
</bean>

<bean id="staticResources" class="org.springframework.web.servlet.resource.ResourceHttpRequestHandler">
    <property name="locations">
        <list>
            <value>/WEB-INF/resources/</value>
        </list>
    </property>
</bean>

==========
				<li>
					<spring:url value="/staffs" var="staffsUrl" htmlEscape="true"/>
					<a href="${staffsUrl}"><spring:message code="menu.staffs" /></a>
				</li>
				
				<li>
					<spring:url value="/contents" var="contentsUrl" htmlEscape="true"/>
					<a href="${contentsUrl}"><spring:message code="menu.contents" /></a>
				</li>

		