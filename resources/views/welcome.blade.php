<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />

        <title>Wunder Fleet</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <link href="{{ asset('css/styles.css') }}" type="text/css" rel="stylesheet" />

    </head>
    <body>
    <div class="image-container set-full-height" style="background-image: url('img/wizard.jpg')">


        <!--   Big container   -->
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">

                    <!--      Wizard container        -->
                    <div class="wizard-container">

                        <div class="card wizard-card" data-color="orange" id="wizardProfile">
                            <form action="" method="">

                                <div class="wizard-header">
                                    <h3>
                                        <b>REGISTER FLEET</b> with  <b>WUNDER MOBILITY</b>
                                        <br>
                                        <small>This information will let us know more about you.</small>
                                    </h3>
                                </div>

                                <div class="wizard-navigation">
                                    <ul>
                                        <li><a href="#personal_information" data-toggle="tab">Personal Information</a></li>
                                        <li><a href="#address_information" data-toggle="tab">Adderss Information</a></li>
                                        <li><a href="#payment_info" data-toggle="tab">Payment Information</a></li>
                                        <li><a href="#confirmation" data-toggle="tab">Confirmation</a></li>
                                    </ul>

                                </div>

                                <div class="tab-content">
                                    <div class="tab-pane" id="personal_information">
                                        <div class="row">
                                            <h4 class="info-text"> Let's get to know you</h4>
                                            <div class="col-sm-8 col-sm-offset-2">
                                                <div class="form-group">
                                                    <label>First Name <small>(required)</small></label>
                                                    <input name="first_name" type="text" class="form-control" placeholder="John" required="true">
                                                </div>
                                                <div class="form-group">
                                                    <label>Last Name <small>(required)</small></label>
                                                    <input name="last_name" type="text" class="form-control" placeholder="Doe" required="true">
                                                </div>
                                                <div class="form-group">
                                                    <label>Telephone <small>(required)</small></label>
                                                    <input name="telephone" type="tel" class="form-control" placeholder="+49 231 50-0" required="true">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="address_information">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h4 class="info-text"> Let's know where you are? </h4>
                                            </div>
                                            <div class="col-sm-5 col-sm-offset-1">
                                                <div class="form-group">
                                                    <label>Street Name <small>(required)</small> </label>
                                                    <input type="text" class="form-control" placeholder="5h Avenue" required="true">
                                                </div>
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="form-group">
                                                    <label>House Number <small>(required)</small> </label>
                                                    <input name="house_number" type="text" class="form-control" placeholder="B514 Nowhere Street" required="true">
                                                </div>
                                            </div>
                                            <div class="col-sm-5 col-sm-offset-1">
                                                <div class="form-group">
                                                    <label>Zip Code <small>(required)</small> </label>
                                                    <input name="zip_code" type="text" class="form-control" placeholder="44135" required="true">
                                                </div>
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="form-group">
                                                    <label>City <small>(required)</small> </label><br>
                                                    <select name="city" class="form-control">
                                                        <option value="Berlin"> Berlin </option>
                                                        <option value="Frankfurt"> Frankfurt </option>
                                                        <option value="Hamburg"> Hamburg </option>
                                                        <option value="Munich"> Munich </option>
                                                        <option value="Cologne"> Cologne </option>
                                                        <option value="Dortmund"> Dortmund </option>
                                                        <option value="Düsseldorf"> Düsseldorf </option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="payment_info">
                                        <h4 class="info-text"> Enter payment information </h4>
                                        <div class="row">


                                            <div class="col-sm-5 col-sm-offset-1">
                                                <div class="form-group remove-bottom-padding">
                                                    <label>Account Owner <small>(required)</small> </label>
                                                    <input type="text" class="form-control" placeholder="John Doe" required="true">
                                                </div>
                                            </div>

                                            <div class="col-sm-5">
                                                <div class="form-group remove-bottom-padding">
                                                    <label>IBAN <small>(required)</small> </label>
                                                    <input type="text" class="form-control" placeholder="DE8234" required="true">
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <div class="tab-pane" id="confirmation">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h4 class="info-text"> Result of form post </h4>
                                            </div>

                                            <div class="col-sm-12">
                                                <div class="notice notice-success">

                                                    <strong><i class="fa fa-check-circle success-icon"></i></strong><br />
                                                    <span class="success-code">200</span><br />
                                                    <span class="success-message">paymentDataId</span>
                                                </div>
                                            </div>

                                            <div class="col-sm-12">
                                                <div class="notice notice-danger">
                                                    <strong><i class="fa fa-exclamation-circle error-icon"></i></strong><br />
                                                    <span class="error-code">200</span><br />
                                                    <span class="error-message">error</span>
                                                </div>
                                            </div>




                                        </div>
                                    </div>
                                </div>
                                <div class="wizard-footer height-wizard">
                                    <div class="pull-right">
                                        <input type='button' class='btn btn-next btn-fill btn-warning btn-wd btn-sm' name='next' value='Save & Continue' />
                                        <input type='button' class='btn btn-finish btn-fill btn-warning btn-wd btn-sm' name='finish' value='Finish' />

                                    </div>

                                    <div class="pull-left">
                                        <input type='button' class='btn btn-previous btn-fill btn-default btn-wd btn-sm' name='previous' value='Previous' />
                                    </div>
                                    <div class="clearfix"></div>
                                </div>

                            </form>
                        </div>
                    </div> <!-- wizard container -->
                </div>
            </div><!-- end row -->
        </div> <!--  big container -->

        <div class="footer">
            <div class="container">
                Copyright &copy; 2018
            </div>
        </div>

    </div>

    </body>

    <!-- SITE SCRIPT -->
    <script src="{{ asset('js/script.js') }}" type="text/javascript"></script>
    <script src="{{ asset('js/gsdk-bootstrap-wizard.js') }}" type="text/javascript"></script>


</html>
