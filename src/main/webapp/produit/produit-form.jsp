<%
if((String)session.getAttribute("nom")==null){
	RequestDispatcher dispatcher = request.getRequestDispatcher("/login");
	dispatcher.forward(request, response);
	}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Produit </title>
<%@ include file="/include/css.jsp"%>
</head>

</head>
<body>
		<div class="wrapper">
	
		<%@ include file="/include/header.jsp"%>
		<%@ include file="/include/sedebar.jsp"%>
		<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark"></h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#"> Produit</a></li>
              <li class="breadcrumb-item active">Gestion De Pharmacie</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				
				<div class="card card-primary">
              <div class="card-header">
              <c:if test="${produit != null}">
            			
                <h3 class="card-title">Modifier Produit</h3>
            		</c:if>
            		<c:if test="${produit == null}">
            			<h3 class="card-title">Ajouter Un Produit</h3>
            		</c:if>
              </div>
              <c:if test="${produit == null}">
            			<form  action="medicament?type=/insert" method="post" role="form">
				
            			</c:if>
				
				<c:if test="${produit != null}">
            	<form  action="medicament?type=/update" method="post" role="form">
				
            	</c:if>

				
					<input type="hidden" name="id" value="<c:out value='${produit.id}' />" />
				<div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">nom</label>
                    <input type="text" class="form-control" name="intitule" value="<c:out value='${produit.intitule}' />" required="required"  id="exampleInputEmail1" placeholder="Nom produit"  >
                  </div>
				
				
				<div class="form-group">
                    <label for="exampleInputEmail1">Quantite</label>
                    <input type="number" class="form-control" name="valueOf" value="<c:out value='${produit.quantite}' />" required="required" >
                </div>
				
				
				<div class="form-group">
                    <label for="exampleInputEmail1">Prix</label>
                    <input type="number" class="form-control" name="prix" value="<c:out value='${produit.prix}' />" required="required"  id="exampleInputEmail1" placeholder="prix" disabled>
                </div>
				</div>
				<div class="form-group">
                    <label for="exampleInputEmail1">Date d'expiration</label>
                    <input type="text" class="form-control" name="date_exp" value="<c:out value='${produit.date_exp}' />" required="required"  id="exampleInputEmail1" placeholder="date_exp" disabled>
                </div>
				</div>
				<c:if test="${produit == null}">
				<div class="card-footer">
                  <button type="submit" class="btn btn-primary">Ajout</button>
                </div>
                </c:if>
                <c:if test="${produit != null}">
				<div class="card-footer">
                  <button type="submit" class="btn btn-primary">Modifier</button>
                </div>
                </c:if>
				</form>
				</div>
			</div>
		</div>
	</div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
	</div>
      <%@ include file="/include/footer.jsp"%>
	<%@ include file="/include/js.jsp"%>  
	
</body>
</html>
