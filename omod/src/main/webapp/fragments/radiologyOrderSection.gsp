<%
    ui.includeCss("radiologyapp", "radiologyOrder.css")
    def patient = config.patient
%>
<div class="info-section">
    <div class="info-header">
        <i class="icon-camera"></i>
        <h3>${ ui.message("radiologyapp.app.orders").toUpperCase() }</h3>
    </div>
    <div class="info-body">
        <% if (orders && orders.isEmpty()) { %>
        ${ui.message("coreapps.none")}
        <% } %>
        <ul>
            <% orders.each { it -> %>
            <li class="clear">
                <a href="${ ui.urlBind("/" + contextPath + visitsPageWithSpecificVisitUrl, it.encounter.visit) }">
                    ${ ui.formatDatePretty(it.dateCreated) }
                </a>
                <div class="cleartag">
                    ${ it.concept ? ui.format(it.concept) :  ui.message("radiologyapp.procedure.unknown") }
                </div>
            </li>
            <% } %>
        </ul>
    </div>
</div>

