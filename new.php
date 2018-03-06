<?php

/*
 * Require PDO Helper file to establish database connection using sigleton pattern.
 */
require_once('ConnectDb.php');
try {
    //create instance of the ConnectDb class.
    $instance = ConnectDb::getInstance();
    $conn = $instance->getConnection();
    $app_id = $_POST['applicationId'];
    $result = $conn->query("SELECT COUNT(application_ID) as count FROM application_form WHERE application_ID='$app_id'");
    if ($result)	{
        $rows = $result->fetchAll(PDO::FETCH_OBJ);
        if((int)$rows[0]->count < 0);
        header('Location: form.php?msg=already');
        exit;
	}
    //create a prepared statement
    $statement = $conn->prepare("INSERT INTO application_form 
        (application_ID, assigned_agency, current_status, SSN, funding_source,
        CalJOBS, last_name, first_name, gender, birth_date, 
        age, address_res, city, state, zip_code, phone_res, mail_address, mail_city,
        mail_state, mail_zip, message_phone, citizen, eligible_to_work, alien_doc, race,
        email_address, foster_child, TANF, family_food_stamps, GR, other_needy_family, 
        disabled, homeless, runaway, pregnant, probation, limited, unemployment, veteran,
        qualifying_veteran, supportive_service_needed, highest_grade_completed, referred_by, 
        TSE, agency, staff_id, note, work_permit_file, parent_signature_file, PDJ, 
        cluster, area_office, caseload_no, education_status, created_on, modified_on)
        VALUES
        (:application_ID, :assigned_agency, :current_status, :SSN, :funding_source,
        :CalJOBS, :last_name, :first_name, :gender, :birth_date, 
        :age, :address_res, :city, :states, :zip_code, :phone_res, :mail_address, :mail_city,
        :mail_state, :mail_zip, :message_phone, :citizen, :eligible_to_work, :alien_doc, :race,
        :email_address, :foster_child, :TANF, :family_food_stamps, :GR, :other_needy_family, 
        :disabl, :homeless, :runaway, :pregnant, :probation, :limited, :unemployment, :veteran,
        :qualifying_veteran, :supportive_service_needed, :highest_grade_completed, :referred_by, 
        :TSE, :agency, :staff_id, :note, :work_permit_file, :parent_signature_file, :PDJ, 
        :cluster, :area_office, :caseload_no, :education_status,now(), now())");

    //bind params and execute prepapred statement
    $statement->execute([
        "application_ID" => $_POST['applicationId'], 
        "assigned_agency" => $_POST['assigned_agency'], 
        "current_status" => $_POST['current_status'], 
        "SSN" => $_POST['socialsecuritynumber'], 
        "funding_source" => $_POST['fundingsource'],
        "CalJOBS" => $_POST['CalJobsapp'], 
        "last_name" => $_POST['LastName'], 
        "first_name" => $_POST['FirstName'], 
        "gender" => $_POST['Gender'], 
        "birth_date" => $_POST['birth_date'], 
        "age" => $_POST['Age'], 
        "address_res" => $_POST['Address'], 
        "city" => $_POST['City'], 
        "states" => $_POST['State'], 
        "zip_code" => $_POST['zip'], 
        "phone_res" => $_POST['Phone'],
        "mail_address" => $_POST['Mail_Address'], 
        "mail_city" => $_POST['Mail_City'],
        "mail_state" => $_POST['Mail_State'], 
        "mail_zip" => $_POST['Mail_zip'], 
        "message_phone" => $_POST['Message_Phone'],
        "citizen" => $_POST['Citizen'], 
        "eligible_to_work" => $_POST['EligibletoWorkinUS'], 
        "alien_doc" => $_POST['AlienDoc'], 
        "race" => $_POST['Race'],
        "email_address" => $_POST['EmailAddress'], 
        "foster_child" => $_POST['fosterchild'], 
        "TANF" => $_POST['tanf/calworks'], 
        "family_food_stamps" => $_POST['familyfoodstamps'], 
        "GR" => $_POST['gr'], 
        "other_needy_family" => $_POST['otherneedyfamily'], 
        "disabl" => $_POST['disabled'], 
        "homeless" => $_POST['homeless'], 
        "runaway" => $_POST['runawayyouth'], 
        "pregnant" => $_POST['pregnant/parentingyouth'], 
        "probation" => $_POST['probation'], 
        "limited" => $_POST['englishlearner'], 
        "unemployment" => $_POST['unemploymentinsurance'], 
        "veteran" => $_POST['veteranstatus'],
        "qualifying_veteran" => $_POST['spouseofqualifyingveteran'], 
        "supportive_service_needed" => $_POST['supportiveserviceneeded'], 
        "highest_grade_completed" => $_POST['HighestGrade'], 
        "referred_by" => $_POST['Referredby'], 
        "TSE" => $_POST['TSE'], 
        "agency" => $_POST['Agency'], 
        "staff_id" => $_POST['StaffId'], 
        "note" => $_POST['Note'], 
        "work_permit_file" => isset($_POST['WorkPermit'])?$_POST['WorkPermit']:'', 
        "parent_signature_file" => isset($_POST['ParentSignature'])?$_POST['ParentSignature']:'', 
        "PDJ" => $_POST['PDJ'], 
        "cluster" => $_POST['Cluster'], 
        "area_office" => $_POST['AreaOffice'], 
        "caseload_no" => $_POST['CaseloadNo'], 
        "education_status" => isset($_POST['EducationStatus'])?$_POST['EducationStatus']:'',
    ]);
    //header('Location: form.php?msg=success');
}
catch(PDOException $e)
{
    echo "Error: " . $e->getMessage();
}