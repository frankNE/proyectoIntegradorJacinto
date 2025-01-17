<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/global.js"></script>

<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Mantenimiento de Servicio </title>
</head>
<body>
<jsp:include page="intranetCabecera.jsp" />
<div class="container" style="margin-top: 4%">
 <h3>Crud de Servicio</h3>
		 <div class="col-md-23" >  
	     
					<div class="row" style="height: 70px">
						<div class="col-md-2" >
								<input class="form-control" id="id_txt_filtro"  name="filtro" placeholder="Ingrese el nombre" type="text" maxlength="30"/>
						</div>
						<div class="col-md-2" >
							<button type="button" class="btn btn-primary" id="id_btn_filtrar" style="width: 150px">FILTRA</button>
						</div>
						<div class="col-md-2">
							<button type="button" id="id_ver_registra" data-toggle='modal'  data-target="#id_div_modal_registra"  class='btn btn-success' style="width: 150px">REGISTRA</button>
						</div>
					</div>
					
					<div class="row" > 
						<div class="col-md-12" >
								<div class="content" >
						
									<table id="id_table" class="table table-striped table-bordered" >
										<thead>
											<tr>
												<th style="width: 5%">ID</th>
												<th style="width: 25%">Nombre</th>
												<th style="width: 12%">Descripcion</th>
												<th style="width: 10%">Precio</th>
												<th style="width: 10%">Horario</th>
												<th style="width: 10%">Fecha Registro</th>
												<th style="width: 8%">Actualiza</th>
												<th style="width: 8%">Elimina </th>
											</tr>
										</thead>
											<tbody>
											</tbody>
										</table>	
									
								</div>	
						</div>
					</div>
		  </div>
  
  
  	 <div class="modal fade" id="id_div_modal_registra" >
			<div class="modal-dialog" style="width: 80%">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Registro de Servicio</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_registra" accept-charset="UTF-8" class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Servicio</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                	<div class="form-group">
			                                       <label class="col-lg-1 control-label" for="id_reg_nombre" style="text-align: left;">Nombre</label>
			                                        <div class="col-lg-5">
														<input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
			                                        </div>
			                                        <label class="col-lg-2 control-label" for="id_reg_descripcion" style="text-align: left;">Descripci�n</label>
			                                        <div class="col-lg-4">
														<input class="form-control" id="id_reg_descripcion" name="descripcion" placeholder="Ingrese la descripci�n del servicio" type="text" maxlength="10"/>
			                                        </div>
			                                </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-1 control-label" for="id_reg_precio" style="text-align: left;">Precio</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_precio" name="precio" placeholder="Ingrese el precio" type="text" />
		                                        </div>
		                                        <label class="col-lg-2 control-label" for="id_reg_horario" style="text-align: left;">Horario</label>
		                                        <div class="col-lg-4">
													<input class="form-control" id="id_reg_horario" name="horario" placeholder="Ingrese turno de atenci�n del servicio" type="date" />
		                                        </div>
		                                    </div> 
		                                    <div class="form-group">
		                                    	 <label class="col-lg-1 control-label" for="id_reg_foto" style="text-align: left;">Foto</label>
		                                   		 <div class="col-lg-5">
													<input class="form-control" id="id_reg_foto"name="foto" placeholder="Ingrese la foto" type="file"/>
												</div>	
												 <div class="col-lg-2">								
													<img id="id_reg_preview" width="210" height="230">
												 </div>
											</div>
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_registra">REGISTRA</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        
		                    </div>
		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>
  
		 <div class="modal fade" id="id_div_modal_actualiza" >
			<div class="modal-dialog" style="width: 80%">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Servicio</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_actualiza" accept-charset="UTF-8"  class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Servicio</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                    <div class="form-group">
		                                        <label class="col-lg-2 control-label" for="id_ID" style="text-align: left;">ID</label>
		                                        <div class="col-lg-2">
		                                           <input class="form-control" id="id_ID" readonly="readonly" name="idServicio" type="text" maxlength="8"/>
		                                        </div>
		                                        <label class="col-lg-2 control-label" for="id_act_nombre" style="text-align: left;">Nombre</label>
		                                        <div class="col-lg-6">
													<input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-2 control-label" for="id_act_descripcion" style="text-align: left;">Descripci�n</label>
		                                        <div class="col-lg-4">
													<input class="form-control" id="id_act_descripcion" name="descripcion" placeholder="Ingrese la descripci�n del servicio" type="text" maxlength="10"/>
		                                        </div>
		                                        <label class="col-lg-2 control-label" for="id_act_precio" style="text-align: left;">Precio</label>
		                                        <div class="col-lg-4">
													<input class="form-control" id="id_act_precio" name="precio" placeholder="Ingrese el precio" type="text" />
		                                        </div>
		                                    </div>    
		                                     <div class="form-group">
		                                        <label class="col-lg-2 control-label" for="id_act_horario" style="text-align: left;" >Horario</label>
		                                        <div class="col-lg-4">
													<input class="form-control" id="id_act_horario" name="horario" placeholder="Ingrese turno de atenci�n del servicio" type="date"/>
		                                        </div>
		                                    
		                                    </div> 
		                                    
		                                    
		                                    <div class="form-group">
		                                    	 <label class="col-lg-1 control-label" for="id_act_foto" style="text-align: left;">Foto</label>
		                                   		 <div class="col-lg-5">
													<input class="form-control" id="id_act_foto"name="foto" placeholder="Ingrese la foto" type="file"/>
												</div>	
												 <div class="col-lg-2">								
													<img id="id_act_preview" width="210" height="230">
												 </div>
												 <div class="col-lg-1"></div>
												 <div class="col-lg-2">								
													<img id="id_act_saved" width="210" height="230" >
												 </div>
											</div>
										
											  
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_actualiza">ACTUALIZA</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        
		                    </div>
		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>
		
		
				 <div class="modal fade" id="idModalElimina" >
					<div class="modal-dialog" style="width: 60%">
				 	
				 	<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header" style="padding: 35px 50px">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4><span class="glyphicon glyphicon-ok-sign"></span> Eliminar Servicio</h4>
						</div>
				
						  <div class="modal-footer">
						    <button type="button" id="idBtnElimina" name="modalDe" class="btn btn-primary">ELIMINAR</button>
						    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
						  </div>
					</div>
				</div>
				</div>

</div>

<script type="text/javascript">

	$("#id_ver_registra").click(function(){
		console.log($("#id_reg_foto").val());
		$("#id_reg_foto").val("");
		$("#id_reg_preview").attr("src", "/img/imagen_no_disponible.jpg");
	});

	$("#id_reg_foto").change(function (event){
		var file = $("#id_reg_foto").val();
		var extension = file.split(".").pop().toLowerCase();

		if (extension == "jpg"){
			var src = URL.createObjectURL(event.target.files[0]);
			$("#id_reg_preview").attr("src", src);
		}
	});

	$("#id_act_foto").change(function (event){
		var file = $("#id_act_foto").val();
		var extension = file.split(".").pop().toLowerCase();

		if (extension == "jpg"){
			var src = URL.createObjectURL(event.target.files[0]);
			$("#id_act_preview").attr("src", src);
		}
	});
	
	$("#id_btn_filtrar").click(function(){
		var fil=$("#id_txt_filtro").val();
		$.getJSON("consultaCrudServicio",{"filtro":fil}, function (lista){
			agregarGrilla(lista);
		});
	});
	
	function agregarGrilla(lista){
		 $('#id_table').DataTable().clear();
		 $('#id_table').DataTable().destroy();
		 $('#id_table').DataTable({
				data: lista,
				searching: false,
				ordering: true,
				processing: true,
				pageLength: 5,
				lengthChange: false,
				columns:[
					{data: "idServicio"},
					{data: "nombre"},
					{data: "descripcion"},
					{data: "precio"},
					{data: "horario"},
					{data: "fechaRegistro"},
					{data: function(row, type, val, meta){
						var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.idServicio + '\',\'' + row.nombre +'\',\'' + row.descripcion  + '\',\'' + row.precio + '\',\'' + row.horario + '\',\'' + row.fechaRegistro + '\')">Editar</button>';
						return salida;
					},className:'text-center'},	
					{data: function(row, type, val, meta){
					    var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idServicio + '\')">Eliminar</button>';
						return salida;
					},className:'text-center'},													
				]                                     
		    });
	}
	
	function eliminar(id){	
		mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar,null,id);
	}
	
	function accionEliminar(id, estado){	
		$('#id_elimina').val(id);
	    $.ajax({
	          type: "POST",
	          url: "eliminaCrudServicio", 
	          data: {"id":id},
	          success: function(data){
	        	  agregarGrilla(data.lista);
	        	  mostrarMensaje(data.mensaje);
	          },
	          error: function(){
	        	  mostrarMensaje(MSG_ERROR);
	          }
	     });
	}
	
	function editar(id,nombre,descripcion,precio, horario){	
		$('#id_ID').val(id);
		$('#id_act_nombre').val(nombre);
		$('#id_act_descripcion').val(descripcion);
		$('#id_act_precio').val(precio);
		$('#id_act_horario').val(horario);
		
		$('#id_act_saved').attr("src", "/verImagen/"+id);
		$("#id_act_preview").attr("src", "/img/imagen_no_disponible.jpg");
		
		$('#id_div_modal_actualiza').modal("show");
	}
	
	function limpiarFormulario(){	
		$('#id_reg_nombre').val('');
		$('#id_reg_descripcion').val('');
		$('#id_reg_precio').val('');
		$('#id_reg_horario').val('');
	}
	
	$("#id_btn_registra").click(function(){
		var validator = $('#id_form_registra').data('bootstrapValidator');
	    validator.validate();
		
	    if (validator.isValid()) {

	        var formData = new FormData();
	        var file = $('#id_reg_foto')[0].files[0];
	        
	        formData.append("foto", file);
	        formData.append("nombre", $("#id_reg_nombre").val());
	        formData.append("descripcion", $("#id_reg_descripcion").val());
	        formData.append("precio", $("#id_reg_precio").val());
	        formData.append("horario", $("#id_reg_horario").val());

	        
	        $.ajax({
	          type: "POST",
	          url: "registraCrudServicio", 
	          data: formData,
	          enctype : 'multipart/form-data',
	          contentType : false,
	          processData : false,
	          cache:false,
	          success: function(data){
	        	  agregarGrilla(data.lista);
	        	  $('#id_div_modal_registra').modal("hide");
	        	  mostrarMensaje(data.mensaje);
	        	  limpiarFormulario();
	        	  validator.resetForm();
	          },
	          error: function(){
	        	  mostrarMensaje(MSG_ERROR);
	          }
	        });
	        
	    }
	});
	
	$("#id_btn_actualiza").click(function(){
		var validator = $('#id_form_actualiza').data('bootstrapValidator');
	    validator.validate();
	    if (validator.isValid()) {

	    	var formData = new FormData();
		    var file = $('#id_act_foto')[0].files[0];

		    formData.append("id", $("#id_ID").val());
		    formData.append("foto", file);
		    formData.append("nombre", $("#id_act_nombre").val());
		    formData.append("descripcion", $("#id_act_descripcion").val());
		    formData.append("precio", $("#id_act_precio").val());
		    formData.append("horario", $("#id_act_horario").val());
		        
	        $.ajax({
	          type: "POST",
	          url: "actualizaCrudAlumno", 
	          data: formData,
	          enctype : 'multipart/form-data',
	          contentType : false,
	          processData : false,
	          cache:false,
	          success: function(data){
	        	  agregarGrilla(data.lista);
	        	  $('#id_div_modal_actualiza').modal("hide");
	        	  mostrarMensaje(data.mensaje);
	          },
	          error: function(){
	        	  mostrarMensaje(MSG_ERROR);
	          }
	        });
	    }
	});

	$('#id_form_registra').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"nombre":{
                selector: "#id_reg_nombre",
                validators:{
                    notEmpty: {
                         message: 'El nombre es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El nombre es de 3 a 40 caracteres'
                    },
                }
            },
            "descripcion":{
                selector: "#id_reg_descripcion",
                validators:{
                    notEmpty: {
                         message: 'El descripcion es obligatorio'
                    },
                }
            },
            "precio":{
                selector: "#id_reg_precio",
                validators:{
                    notEmpty: {
                         message: 'El precio es obligatorio'
                    },
                }
            },
            "horario":{
            	 selector: "#id_reg_horario",
                 validators:{
                	 notEmpty: {
                         message: 'La fecha es obligatoria'
                    },

                 }
            },
            "foto":{
              	 selector: "#id_reg_foto",
                   validators:{
                  	 	notEmpty: {
                           message: 'La foto es obligatorio'
                       },
                       file: {
                           extension: 'jpg',
                           type: 'image/jpeg',
                           maxSize: 2*1024*1024,
                           message: 'La foto debe ser JPG de tama�o 2MB como m�ximo'
                       }
                   }
             }
          
        }   
    });


	$('#id_form_actualiza').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"nombre":{
                selector: "#id_act_nombre",
                validators:{
                    notEmpty: {
                         message: 'El nombre es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El nombre es de 3 a 40 caracteres'
                    },
                }
            },
            "descripcion":{
                selector: "#id_act_descripcion",
                validators:{
                    notEmpty: {
                         message: 'El descripcion es obligatorio'
                    },
                }
            },
            "precio":{
                selector: "#id_act_precio",
                validators:{
                    notEmpty: {
                         message: 'El precio es obligatorio'
                    },
                }
            },
            "horario":{
            	 selector: "#id_act_horario",
                 validators:{
                	 notEmpty: {
                         message: 'El horario es obligatorio'
                    },

                 }
            }
          
        }   
    });

</script>
    
</body>
</html>