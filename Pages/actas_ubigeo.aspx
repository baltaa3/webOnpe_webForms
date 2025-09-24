﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Onpe.Master" AutoEventWireup="true" CodeBehind="actas_ubigeo.aspx.cs" Inherits="webOnpe_webForms.Pages.actas_ubigeo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

      <div class="container">
      <img src="../Content/images/f-actas.jpg" width="1400" height="248" class="img-responsive mg30top">
  
      <section class="menu navbar-default menu05">
        <div class="navbar-header">
          <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <a name="posicion"></a>
        <nav class="navbar-collapse bs-navbar-collapse collapse" aria-expanded="false">
          <ul class="nav navbar-nav">
            <li class="bt-azul">
              <a href="presidenciales.aspx">PRESIDENCIAL</a>
            </li>
            <li class="bt-amarillo act-amarillo">
              <a href="actas_ubigeo.aspx">ACTAS</a>
            </li>
            <li class="bt-rojo">
              <a href="participacion.aspx">PARTICIPACIÓN CIUDADANA</a>
            </li>
          </ul>
        </nav>
      </section>
      <br/><br/><br/><br/>
  
      <section class="contenedor">
        <div class="row">
          
          <div class="col-xs-12 col-md-3">
            <div class="menu-interna">
              <ul>
                <li><a href="actas_ubigeo.aspx" class="act-izq">Actas por ubigeo</a></li>
                <li><a href="actas_numero.aspx">Actas por número</a></li>
              </ul>
            </div>
          </div>
          
          <div class="col-xs-12 col-md-9" id="impreso">
            <div class="contenido-interna">
              <div class="titulos col-xs-12">
                <div class="col-xs-11">
                    <h3> <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true" style="font-size:19px"></span> SEGUNDA ELECCIÓN PRESIDENCIAL 2016: ACTAS POR UBIGEO</h3>
                </div>

                <div class="col-xs-1 oculto-boton-print">
                    <button onclick="printContent('impreso');"><i class="fa fa-print ico-print"></i></button>
                </div>
              </div>

              <div class="col-lg-7 centered">
                <div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
                  <div class="col-xs-3 col-md-1">
                    <span class="glyphicon glyphicon-ok-circle ico-info" aria-hidden="true"></span>
                  </div>
            
                  <div class="col-xs-9 col-md-11">
                    <ul>
                      <li>ACTUALIZADO EL 20/06/2016 A LAS 19:16 h </li>
                    </ul>
                  </div>
                </div>
              </div>
              
              <div class="col-xs-12 td34up">
               <!-- <form id="frmBuscar" name="frmBuscar" action="" method="post" class="horizontal-form"> -->
                
                  <div class="row">
                    
                 <div class="col-md-3">
                    <label class="control-label">Ámbito:</label>
                    <div id="ambito" class="form-group">
                        <asp:DropDownList 
                            ID="ddlAmbito" 
                            CssClass="form-control" 
                            AutoPostBack="true" 
                            runat="server" 
                            OnSelectedIndexChanged="ddlAmbito_SelectedIndexChanged">
                            <asp:ListItem Text="PERÚ" Value="1" />
                            <asp:ListItem Text="EXTRANJERO" Value="2" />
                        </asp:DropDownList>
                    </div>
                </div>


                <div id="dvNombreDepartamento" class="col-md-3">
                    <div class="form-group">
                        <label id="lblDepartamento" class="control-label">Departamento:</label>
                        <div id="departamentos">
                            <asp:DropDownList 
                                ID="DDLDepartamento" 
                                runat="server" 
                                AutoPostBack="true"
                                OnSelectedIndexChanged="DDLDepartamento_SelectedIndexChanged"
                                CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

             
                <div id="dvNombreProvincia" class="col-md-3">
                    <div class="form-group">
                        <label id="lblProvincia" class="control-label">Provincia:</label>
                        <div id="provincias">
                            <asp:DropDownList 
                                ID="DDLProvincia" 
                                CssClass="form-control" 
                                runat="server" 
                                AutoPostBack="true"
                                OnSelectedIndexChanged="DDLProvincia_SelectedIndexChanged">
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <label id="lblDistrito" class="control-label">Distrito:</label>
                    <div id="distritos" class="form-group">
                        <asp:DropDownList 
                            ID="DDLDistrito" 
                            CssClass="form-control" 
                            runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                    <div class="col-md-8">
                      <div class="form-group">
                        <label class="control-label">Locales:</label>
                        <div id="divLocal">    
                          <asp:DropDownList 
                                ID="DDLLocales" 
                                CssClass="form-control" 
                                runat="server">
                        </asp:DropDownList>
                        </div>
                      </div>
                    </div>
                    
                    <div id="divDetalle" class="ptop20">
                      
                      <div class="col-xs-12 pbot30">
                        <p class="subtitle">LISTADO DE MESAS</p>
                        <div id="page-wrap">
                          <table class="table17" cellspacing="0">
                            <tbody>
                              <tr>
                                <td bgcolor="#C1C1C1" onclick="verDetalleMesa('010202', '000169', '10', '1')" style="cursor:pointer"><a href="#">000169</a></td>
                                <td bgcolor="#C1C1C1" onclick="verDetalleMesa('010202', '000170', '10', '1')" style="cursor:pointer"><a href="#">000170</a></td>	  
                                <td bgcolor="#C1C1C1" onclick="verDetalleMesa('010202', '000171', '10', '1')" style="cursor:pointer"><a href="#">000171</a></td>	  
                              </tr>
                              <tr>
                                <td bgcolor="#C1C1C1" onclick="verDetalleMesa('010202', '000179', '10', '1')" style="cursor:pointer"><a href="#">000179</a></td>	  
                                <td bgcolor="#C1C1C1" onclick="verDetalleMesa('010202', '000180', '10', '1')" style="cursor:pointer"><a href="#">000180</a></td>	  
                                <td bgcolor="#C1C1C1" onclick="verDetalleMesa('010202', '000181', '10', '1')" style="cursor:pointer"><a href="#">000181</a></td>	  
                              </tr>
                            </tbody>
                          </table>
                        </div>
                      </div>
z

                      <div class="col-xs-12 cont-recto oculto-leyenda-color-fondo-mesas">
                        <div class="col-md-4"><img src="../content/images/procesacon.jpg"> Procesada con imagen</div>
                        <div class="col-md-4"><img src="../content/images/procesasin.jpg"> Procesada sin imagen</div>
                        <div class="col-md-4"><img src="../content/images/sinprocesa.jpg"> Sin procesar</div>
                      </div>
        
                      <div class="row pbot30">
                        <div class="col-lg-8 centered">
                          <div class="col-xs-12 col-md-12 col-lg-12">
                            <table>
                              <tbody>
                                <tr>
                                  <td colspan="10">
                                    <div class="conte-paginador">
                                      <span class="paginador-txt">Total de mesas: 18</span>
                                    </div>
                                  </td>
                                </tr>  
                                <tr>
                                  <td>&nbsp;</td>
                                </tr>
                                <tr>
                                  <td colspan="10">Página: 
                                    <ul class="pagination">
                                      <li class="active"><a class="paginador-n1">1</a></li>
                                    </ul>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div>

                    </div>

                    <div id="divDetalle" class="ptop20">
                      <div class="contenido-resultados">
                        <button class="btn btn-primary pull-right" onclick="actas_porUbigeo_verActsPr('', '10', '', '1')" type="button">
                            
                          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                          REGRESAR
                        </button>
                        <p>&nbsp;</p>
        
                        <div class="row">
                          <div class="tab-info">
                            <div class="tab-content">
                              <div id="detMesa">
                                <div class="tab-content">
                                  <div role="tabpanel" class="tab-pane active" id="presidencial">
                                    <div class="tab-info-desc">
                                      
                                      <div class="row">

                                        <div class="col-xs-3 col-md-4">
                                          <div class="mesap01">
                                            <img src="../Content/images/mp-sin.jpg" class="img-responsive">
                                            Si requiere la imagen del acta, solicítela a través del procedimiento de acceso a la información pública.
                                          </div>
                                        </div>
                                        <div class="col-xs-9 col-md-8">
                                          <div class="row">
                                            
                                            <div class="col-xs-12">
                                              <p class="subtitle1">ACTA ELECTORAL</p>
                                              <div id="page-wrap">
                                                <table class="table13" cellspacing="0">
                                                  <thead>
                                                    <tr>
                                                      <th>Mesa N°</th>
                                                      <th>N° Copia</th>
                                                    </tr>
                                                  </thead>
                                                  <tbody>
                                                    <tr>
                                                      <td>000169</td>
                                                      <td>96A</td>
                                                    </tr>
                                                  </tbody>
                                                </table>
                                              </div>
                                            </div>
                                
                                            <div class="col-xs-12">
                                              <p class="subtitle1">INFORMACIÓN UBIGEO</p>
                                              <div id="page-wrap">
                                                <table class="table14" cellspacing="0">
                                                  <tbody>
                                                    <tr class="titulo_tabla">
                                                      <td>Departamento</td>
                                                      <td>Provincia</td>
                                                      <td>Distrito</td>
                                                      <td>Local de votación</td>
                                                      <td>Dirección</td>
                                                    </tr>
                                                    <tr>
                                                      <td>AMAZONAS</td>
                                                      <td>BAGUA</td>
                                                      <td>ARAMANGO</td>
                                                      <td>IE 16201</td>
                                                      <td>AV. 28 DE JULIO SN</td>
                                                    </tr>
                                                  </tbody>
                                                </table>
                                              </div>
                                            </div>
                                
                                            <div class="col-xs-12">
                                              <p class="subtitle1">INFORMACIÓN MESA</p>
                                              <div id="page-wrap">
                                                <table class="table15" cellspacing="0">
                                                  <tbody>
                                                    <tr class="titulo_tabla">
                                                      <td>Electores hábiles</td>
                                                      <td>Total votantes</td>
                                                      <td>Estado del acta</td>
                                                    </tr>
                                                    <tr>
                                                      <td>298</td>
                                                      <td>199</td>
                                                      <td>ACTA ELECTORAL NORMAL</td>
                                                    </tr>
                                                  </tbody>
                                                </table>
                                              </div>
                                            </div>

                                          </div>
                                        </div>
                                      </div>
                                
                                      <div>
                                        <div class="col-xs-12 pbot30_acta">
                                          <p class="subtitle1">LISTA DE RESOLUCIONES</p>
                                          <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> No hay resoluciones para el acta seleccionada
                                          <div id="page-wrap">
                                            <div class="col-md-12 resolu"></div>
                                          </div>
                                          <!-- <p class="centro"># : El valor consignado en el acta presenta ilegibilidad.</p> -->
                                        </div>
                                      </div>
                                
                                      <div>
                                        <div class="col-xs-12">
                                          <p class="subtitle1">INFORMACIÓN DEL ACTA ELECTORAL</p>
                                          <div id="page-wrap" class="cont-tabla1">
                                            <table class="table06">
                                              <tbody>
                                                <tr class="titulo_tabla">
                                                  <td colspan="2">Organización política</td>
                                                  <td>Total de Votos</td>
                                                </tr>
                                                  <td>PERUANOS POR EL KAMBIO</td>
                                                  <td><img width="40px" height="40px" src="../Content/images/simbolo_keyko.jpg"></td>
                                                  <td>56</td>
                                                </tr>
                                                <tr>
                                                  <td>FUERZA POPULAR</td>
                                                  <td><img width="40px" height="40px" src="../Content/images/simbolo_pkk.jpg"></td>
                                                  <td>129</td>
                                                </tr>
                                                <tr>
                                                  <td colspan="2">VOTOS EN BLANCO</td>
                                                  <td>1</td>
                                                </tr>
                                                <tr>
                                                  <td colspan="2">VOTOS NULOS</td>
                                                  <td>13</td>
                                                </tr>
                                                <tr>
                                                  <td colspan="2">VOTOS IMPUGNADOS</td>
                                                  <td>0</td>
                                                </tr>
                                                <tr>
                                                  <td colspan="2">TOTAL DE  VOTOS EMITIDOS</td>
                                                  <td>199</td>
                                                </tr>
                                              </tbody>
                                            </table>
                                          </div>
                                        </div>
                                      </div>
                                
                                    </div>
                                  </div>
                                </div>				
                              
                              </div>
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
      </section>
    </div>
    <br/><br/>

</asp:Content>