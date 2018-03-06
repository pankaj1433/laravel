<?php

/*
 * Require PDO Helper file to establish database connection using sigleton pattern.
 */
require_once('ConnectDb.php');

try {
	//create instance of the ConnectDb class.
	$instance = ConnectDb::getInstance();
	$conn = $instance->getConnection();

	//create a prepared statement.
	$result_education = $conn->query("SELECT * FROM education_status WHERE ACTIVE=1 ORDER BY SORT_KEY");
	if ($result_education)	{
		$rows = $result_education->fetchAll(PDO::FETCH_OBJ);
	}
	else {
		$rows = false;
	}

	//fetch radio buttons.
	// $result_radio = $conn->query("SELECT radio_buttons.LABEL, radio_buttons.ACTIVE,radio_buttons.SORT_KEY,radio_button_options.option_name
	// 												FROM radio_button_options
	// 												INNER JOIN radio_buttons ON radio_buttons.ID=radio_button_options.radio_id;");
	$result_radio = $conn->query("SELECT * from radio_buttons");
	if ($result_radio)	{
		$radio_buttons = $result_radio->fetchAll(PDO::FETCH_OBJ);
	}
	else {
		$radio_buttons = false;
	}
	//get all the sort keys for education status.
	$key_result = $conn->query("SELECT DISTINCT SORT_KEY FROM radio_buttons");
	if ($key_result)	{
		$sort_keys = $key_result->fetchAll(PDO::FETCH_OBJ);
		// var_dump($sort_keys[0]->SORT_KEY);
	}
	
	else {
		$sort_keys = false;
	}
}
catch(PDOException $e)
{
    echo "Error: " . $e->getMessage();
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="style.css">

		<title>Application Form</title>
		<style>
			.search-button {
				background-color: #fff;
				padding: 5px;
				border: 1px solid;
				font-size: 14px;
				cursor: pointer;
			}
			.radio {
				display: inline-block;
				width: 33%;
				padding: 0;
			}
		</style>
  </head>
  <body>
  <form action="new.php" method="POST"> 
    <h1>Work Base Learning</h1>
	<div class="container">
	 <div class="border-box">
	  <div class="row">
		<div class="col">
		  <b>Application ID</b><span>*</span>
		</div>
		<div class="col">
		<b>Application Date</b><span>*</span>
		</div>
		<div class="col">
		<b>Enrollment Date</b><span>*</span>
		</div>
		<div class="col">
		  <b>Assigned Agency</b><span>*</span>
		</div>
		<div class="col">
		 <b>Current Status</b><span>*</span>
		</div>
	  </div>
	  <div class="row">
		<div class="col">
		  <input value="" type="text" id="applicationId" name="applicationId" style="width:100%;" required/>
		</div>
		<div class="col">
		 <input value="" type="text" name="application Date" style="width:100%;" required/>
		</div>
		<div class="col">
		  <input value="" type="text" name="enrollment Date" style="width:100%;" required/>
		</div>
		<div class="col">
		  <input value="" type="text" name="assigned_agency" style="width:100%;" required/>
		</div>
		<div class="col">
		  <input value="" type="text" name="current_status" required/>
		</div>
	  </div>
	  <div class="row">
	    <div class="col">
	      <b>Last Name</b><span>*</span>
		  </div>
		<div class="col">
		  <b>First Name</b><span>*</span>
		</div>
		<div class="col">
	      <b>SSN#</b><span>*</span>
		</div>
		
		
		<div class="col">
		<b>Funding Source</b><span>*</span>
		</div>
		<div class="col">
		<b>CalJOBS App#</b><span>*</span>
		</div>
		
	  </div>
	  <div class="row">
	     <div class="col">
		  <input type="text" name="LastName" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="FirstName" style="width:100%;"/>
		</div>
		<div class="col">
		  <input value="" type="text" name="socialsecuritynumber" style="width:100%;"/>
		</div>
		 
		<div class="col">
		  <input type="text" name="fundingsource" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="CalJobsapp" style="width:100%;"/>
		</div>
		
	  </div>
	  <div class="row">
		<div class="col">
		<b>Birth Date</b><span>*</span>
		</div>
		<div class="col">
		<b>Age</b><span>*</span>
		</div>
		<div class="col-6"><span>*</span>
		 <b>Gender</b>
		</div>
      </div>
	  <div class="row">
		<div class="col">
		  <input type="date" name="birth_date" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="Age" style="width:100%;"/>
		</div>
		<div class="col-6">
		  <input type="radio" name="Gender" value="Male">Male
          <input type="radio" name="Gender" value="Female"> Female
		  <input type="radio" name="Gender" value="Did Not Self Identify"> Did Not Self Identify
		</div>
		
	  </div>
	  <div class="row">
		<div class="col">
	     <b> Address(Residence)</b><span>*</span>
		</div>
		<div class="col">
		  <b>City</b><span>*</span>
		</div>
		<div class="col">
		 <b>State</b><span>*</span>
		</div>
		<div class="col">
		<b>Zip Code</b><span>*</span>
		</div>
		<div class="col">
		<b>Phone(Residence)</b><span>*</span>
		</div>
      </div>
	  <div class="row">
		<div class="col">
		  <input type="text" name="Address" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="City" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="State" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="zip" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="Phone" style="width:100%;"/>
		</div>
		</div>
		<div class="row">
		<div class="col">
	      <b>Mail Address</b><span>*</span>
		</div>
		<div class="col">
		  <b>Mail City</b><span>*</span>
		</div>
		<div class="col">
		 <b>Mail State</b><span>*</span>
		</div>
		<div class="col">
		<b>Mail Zip</b> <span>*</span>
		</div>
		<div class="col">
		<b>Message Phone</b><span>*</span>
		</div>
      </div>
	  <div class="row">
		<div class="col">
		  <input type="text" name="Mail_Address" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="Mail_City" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="Mail_State" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="Mail_zip" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="Message_Phone" style="width:100%;"/>
		</div>
	  </div>
	  <div class="row">
		<div class="col">
	      <b>Citizen</b><span>*</span>
		</div>
		<div class="col">
		  <b>Eligible to work In U.S.</b><span>*</span>
		</div>
		<div class="col">
		  <b>Alien Doc#</b><span>*</span>
		</div>
		<div class="col">
		 <b>Race</b><span>*</span>
		</div>
    </div>
	<div class="row">
		
		<div class="col">
		  <input type="radio" name="Citizen" value="Yes">Yes
          <input type="radio" name="Citizen" value="No"> No
		</div>
		<div class="col">
		  <input type="radio" name="EligibletoWorkinUS" value="Yes">Yes
          <input type="radio" name="EligibletoWorkinUS" value="No"> No
		</div>  
		<div class="col">
		  <input type="text" name="AlienDoc" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="Race" style="width:100%;"/>
		</div>
	</div>
	<div class="row">
		<div class="col">
	      <b>Email Address</b><span>*</span>
		</div>
	    <!--<div class="col">
		  <b>Face Book Account</b>
		</div>
		<div class="col">
		  <b>Twitter Account</b>
		</div>
		<div class="col">
		  <b>My Space Account</b>
		</div> -->
		</div>
	
	<div class="row">
	<div class="col">
		  <input type="text" name="EmailAddress" style="width:30%;"/>
		</div>
		<!--<div class="col">
		  <input type="text" name="Face Book account" style="width:100%;"/>
		</div>
		  <div class="col">
		  <input type="text" name="Twitter Account" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="My Space Account" style="width:100%;"/>
	</div> -->
	</div>
	</div>
	<div class="border-box">
		<?php
			//render radio buttons
			foreach ($radio_buttons as $radio_button) {
				$input_name = strtolower(str_replace(' ', '', $radio_button->LABEL));
				//radio button label
				echo "<div class='radio $radio_button->SORT_KEY'><b>$radio_button->LABEL</b><span>*</span><br>";
				try {
					//options for radio buttons
					$options_sql = $conn->query("SELECT * from radio_button_options where radio_id=".$radio_button->ID);
					$options = ($options_sql) ? $options_sql->fetchAll(PDO::FETCH_OBJ):false;
					if ($options) {
						foreach($options as $option) {
							//render each option
							echo "<input type='radio' name='$input_name' value='$option->option_name'>$option->option_name&nbsp;";
						}
					}
				}catch(PDOException $e) {
						//catch exception here
				}
				echo "</div>";
			}
		?>
	</form>
	</div>
	<div class="border-box">
		<div class='row'>
			<div class='col'>
				<b>Education Status</b><span>*</span>
			</div>
			<div class='col'>
				<select name='EducationStatus'>
				<option value=''>-- Select Education status --</option>
				<?php
						if ($rows) {
							foreach ($rows as $row ) {
								echo "<option value='$row->LABEL'>$row->LABEL</option>";
							}
						}
				?>
				</select>
			</div>
		</div>
		<?php 
		// render Education Status Row.
		if ($rows) {
			
		// 	$count = 0;
		// 	echo "<div class='row'><div class='col'><b>Education Status</b><span>*</span></div><div class='col'><select id='sort'>";
		// 	echo "<option value='show all'>Show all</option>";
		// 	//for select drop down
		// foreach($sort_keys as $sort_key) {
		// 		// var_dump($key);
		// 		echo "<option value='$sort_key->SORT_KEY'>$sort_key->SORT_KEY</option>";
		// 	}
		// 	echo "</select></div></div><div class='row'>";
		// 	foreach ($rows as $row ) {
		// 		//to change row after every third col.
		// 		if( $count%3 == 0 && $count != 0) {
		// 				echo "</div><div class='row'>";
		// 		}
		// 		echo "<div class='col edu $row->SORT_KEY'><input type='radio' name='EducationStatus' value='$row->LABEL'>$row->LABEL</div>" ;
		// 	}
		// 	echo "</div>";
		}
		?>
	
	<div class="row">
		<div class="col">
		 <b>Highest Grade Completed</b>
		</div>
		<div class="col">
		 <b>Referred by</b>
		</div>
		<div class="col">
		 <b>TSE</b>
		</div>
	</div>
	<div class="row">
	<div class="col">
		  <input value="" type="text" name="HighestGrade" style="width:100%;"/>
		</div>
		<div class="col">
		  <input value="" type="text" name="Referredby" style="width:100%;"/>
		</div>
		  <div class="col">
		  <input value="" type="text" name="TSE" style="width:100%;"/>
		</div>
		</div>
		<div class="row">
		<div class="col">
		<b>Agency</b><span>*</span>
		</div>
		<div class="col">
		<b>Staff Id</b><span>*</span>
		</div>
		<div class="col">
		<b>Note</b><span>*</span>
		</div>
	</div>
	<div class="row">
	<div class="col">
		  <input type="text" name="Agency" style="width:50%;"/>
		</div>
		<div class="col">
		  <input type="text" name="StaffId" style="width:50%;"/>
		</div>
		  <div class="col">
		  <input type="text" name="Note" style="width:100%;"/>
		</div>
		</div>
	<div class="row">
		<div class="col">
		 <b>Work Permit On File (Required for age < 18)</b><span>*</span>
		</div>
		<div class="col">
		 <b>Parent Signature on File (Required for age < 18)</b><span>*</span>
		</div>
		</div>
	<div class="row">
		
		<div class="col">
		  <input type="radio" name="WorkPermit" value="Yes">Yes
          <input type="radio" name="WorkPermit" value="No"> No
		  <input type="radio" name="WorkPermit" value="Not Applicable"> Not Applicable
		</div>
		<div class="col">
		  <input type="radio" name="ParentSignature" value="Yes">Yes
          <input type="radio" name="ParentSignature" value="No"> No
		  <input type="radio" name="ParentSignature" value="Not Applicable"> Not Applicable
		</div>
		
		</div>
	  </div>
	 <div class="border-box">
	<div class="row">
		<div class="col">
		<b>Probation Department</b>
		</div>
	</div>
	
	<div class="row">
		<div class="col">
		 <b>PDJ#</b><span>*</span>
		</div>
		<div class="col">
		 <b>Cluster</b><span>*</span>
		</div>
		<div class="col">
		 <b>Area Office</b><span>*</span>
		</div>
		<div class="col">
		 <b>Caseload No</b><span>*</span>
		</div>
	</div>
	 <div class="row">
		<div class="col">
		  <input type="text" name="PDJ" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="Cluster" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="AreaOffice" style="width:100%;"/>
		</div>
		<div class="col">
		  <input type="text" name="CaseloadNo" style="width:100%;"/>
		</div>
		</div>
	</div>
	     <input type="Submit" Value="Submit Form"/>
	</form>
		</div>
		<br>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script>
			$(document).ready(function() {
				if(window.location.href.indexOf('success')>0) {
					//alert ('data saved successfully')
				}
				if(window.location.href.indexOf('already')>0) {
					//alert ('data already exist')
				}
			});
			$('#sort').on('change', function (e) {
					var optionSelected = $("option:selected", this);
					var valueSelected = this.value;
					if(valueSelected == "show all") {
						$('.radio').show();
					}
					else {
						$('.radio').hide();
						$('.'+valueSelected).show();
					}
			});
			$('#search').click(function(){
				var app_id = $('#applicationId').val();
				if(app_id != "") {
					$.ajax({
						url: "search.php", 
						type: "POST",
						data: {app_id : app_id} ,
						success: function(resp){
							var result = jQuery.parseJSON(resp);
							if (result.length > 0) {
								result = result[0];
								$('[name="assigned_agency"]').val(result.assigned_agency);
								$('[name="current_status"]').val(result.current_status)
								$('[name="socialsecuritynumber"]').val(result.SSN)
								$('[name="fundingsource"]').val(result.funding_source)
								$('[name="CalJobsapp"]').val(result.CalJOBS)
								//$('[name="unincorporated_area"][value="'+result.unincorporated_area+'"]').attr('checked', 'checked')
								$('[name="LastName"]').val(result.last_name)
								$('[name="FirstName"]').val(result.first_name)
								$('[name="Gender"][value="'+result.gender+'"]').attr('checked', 'checked')
								$('[name="birth_date"]').val(result.birth_date)
								$('[name="Age"]').val(result.age)
								$('[name="Address"]').val(result.address_res)
								$('[name="City"]').val(result.city)
								$('[name="State"]').val(result.state)
								$('[name="zip"]').val(result.zip_code)
								$('[name="Phone"]').val(result.phone_res)
								$('[name="Mail_Address"]').val(result.mail_address)
								$('[name="Mail_City"]').val(result.mail_city)
								$('[name="Mail_State"]').val(result.mail_state)
								$('[name="Mail_zip"]').val(result.mail_zip)
								$('[name="Message_Phone"]').val(result.message_phone)
								$('[name="Citizen"][value="'+result.citizen+'"]').attr('checked', 'checked')
								$('[name="EligibletoWorkinUS"][value="'+result.eligible_to_work+'"]').attr('checked', 'checked')
								$('[name="AlienDoc"]').val(result.alien_doc)
								$('[name="Race"]').val(result.race)
								$('[name="EmailAddress"]').val(result.email_address)
								$('[name="fosterchild"][value="'+result.foster_child+'"]').attr('checked', 'checked')
								$('[name="tanf/calworks"][value="'+result.TANF+'"]').attr('checked', 'checked')
								$('[name="familyfoodstamps"][value="'+result.family_food_stamps+'"]').attr('checked', 'checked')
								$('[name="gr"][value="'+result.GR+'"]').attr('checked', 'checked')
								$('[name="otherneedyfamily"][value="'+result.other_needy_family+'"]').attr('checked', 'checked')
								$('[name="disabled"][value="'+result.disabled+'"]').attr('checked', 'checked')
								$('[name="homeless"][value="'+result.homeless+'"]').attr('checked', 'checked')
								$('[name="runawayyouth"][value="'+result.runaway+'"]').attr('checked', 'checked')
								$('[name="pregnant/parentingyouth"][value="'+result.pregnant+'"]').attr('checked', 'checked')
								$('[name="probation"][value="'+result.probation+'"]').attr('checked', 'checked')
								$('[name="englishlearner"][value="'+result.limited+'"]').attr('checked', 'checked')
								$('[name="unemploymentinsurance"][value="'+result.unemployment+'"]').attr('checked', 'checked')
								$('[name="veteranstatus"][value="'+result.veteran+'"]').attr('checked', 'checked')
								$('[name="spouseofqualifyingveteran"][value="'+result.qualifying_veteran+'"]').attr('checked', 'checked')
								$('[name="supportiveserviceneeded"][value="'+result.supportive_service_needed+'"]').attr('checked', 'checked')
								$('[name="EducationStatus"][value="'+result.education_status+'"]').attr('checked', 'checked')
								$('[name="HighestGrade"]').val(result.highest_grade_completed)
								$('[name="Referredby"]').val(result.referred_by)
								$('[name="Agency"]').val(result.agency)
								$('[name="TSE"]').val(result.TSE)
								$('[name="StaffId"]').val(result.staff_id)
								$('[name="Note"]').val(result.note)
								$('[name="WorkPermit"][value="'+result.work_permit_file+'"]').attr('checked', 'checked')
								$('[name="ParentSignature"][value="'+result.parent_signature_file+'"]').attr('checked', 'checked')
								$('[name="PDJ"]').val(result.PDJ)
								$('[name="Cluster"]').val(result.cluster)
								$('[name="AreaOffice"]').val(result.area_office)
								$('[name="CaseloadNo"]').val(result.caseload_no)
							}
							else {
								alert('No record found');
							}
						}
					});
				}
				else {
					alert ('Enter an Application ID to search')
				}
			})
		</script>
	</body>
</html>