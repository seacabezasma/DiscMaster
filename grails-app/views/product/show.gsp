
<%@ page import="discmaster.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="${productInstance?.name}" /></title>
	</head>
	<body>
		<div id="show-product" class="content scaffold-show" role="main">
			<h1><g:message code="${productInstance?.name}" /></h1>

				<div class="column">
					<div class="row small-up-2 collapse">
						<div class="column">
							<g:if test="${productInstance?.description?.image}">
									<span class="property-value" aria-labelledby="name-label"><discmaster:productImg product="${product}" class="thumbnail"/> </span>
							</g:if>
						</div>
						<div class="column">

					<g:if test="${productInstance?.price}">
						<div class="row">
						<span id="price-label" class="property-label"><g:message code="product.price.label" default="COP " /></span>

							<span class="property-value" aria-labelledby="price-label"><discmaster:productPrice product="${productInstance}"/></span>
						</div>
					</g:if>

					<g:if test="${productInstance?.discount}">
						<span id="discount-label" class="property-label"><g:message code="product.discount.label" default="Discount:" /></span>

							<span class="property-value" aria-labelledby="discount-label"><g:fieldValue bean="${productInstance}" field="discount"/></span>

					</g:if>

					<g:if test="${productInstance?.totalInStorage}">
						<div class="row">
						<span id="totalInStorage-label" class="property-label"><g:message code="product.totalInStorage.label" default="Stock:" /></span>

							<span class="property-value" aria-labelledby="totalInStorage-label"><g:fieldValue bean="${productInstance}" field="totalInStorage"/></span>
						</div>
					</g:if>
							<div class="row">
								<span id="quantity-label" class="property-label"><g:message code="quantity.label" default="Cantidad:" /></span>
								<span class="property-value" aria-labelledby="quantity-label"><g:select name="quantity" from="${1..99}" noSelection="['':'0']" value="$quantity}"></g:select></span>

							</div>
							<a href="#" class="button large expanded">Añadir al carrito</a></div>
						</div>
				</div>

				<g:if test="${productInstance?.description?.description}">
					<div class="row">
					<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${productInstance.description}" field="description"/></span>
					</div>
				</g:if>

				<g:if test="${productInstance?.tag}">
					<div class="row">
					<span id="tag-label" class="property-label"><g:message code="product.tag.label" default="Tags:" /></span>

						<g:each in="${productInstance.tag}" var="t">
						<span class="property-value" aria-labelledby="tag-label"><g:fieldValue bean="${t}" field="tag"/></span>
						</g:each>
					</div>
				</g:if>

			<g:form url="[resource:productInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="button" action="edit" resource="${productInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="button" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>

		</div>
	</body>
</html>
