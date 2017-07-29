/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


jQuery.extend(jQuery.validator.messages, {
    required: "This field is required",
    remote: "Please fix this field.",
    email: "Please enter a valid email address.",
    url: "Please enter a valid URL.",
    date: "Please enter a valid date.",
    dateISO: "Please enter a valid date (ISO).",
    number: "Please enter a valid number.",
    digits: "Please enter only digits.",
    creditcard: "Please enter a valid credit card number.",
    equalTo: "Please enter the same value again.",   
    accept: "Please enter a value with a valid extension.",
    maxlength: jQuery.validator.format("Please enter no more than {0} characters."),
    minlength: jQuery.validator.format("Please enter at least {0} characters."),
    rangelength: jQuery.validator.format("Please enter a value between {0} and {1} characters long."),
    range: jQuery.validator.format("Please enter a value between {0} and {1}."),
    max: jQuery.validator.format("Please enter a value less than or equal to {0}."),
    min: jQuery.validator.format("Please enter a value greater than or equal to {0}."),
    checkMobileNo:"Mobile number must start with 015/016/017/018/019",
    checkNidNumber:"Only number and must start with a non-zero number",
    uniquePaymentCycle:"Payment Cycle already exists!",
    checkPaymentCycleSequence: "Start Month should be Earlier than End Month!",
    uniqueUserID:"User ID is already taken!",
    checkDateOfBirth:"Age should be between 20 to 35 years!",
    uniqueMobileNo:"Mobile No. is Already Used!",
    checkBeneficiaryID:"No Beneficiary is available with this ID!",
    uniqueNid:"Application already submitted with this NID!",
    uniqueFiscalYear:"Fiscal Year already exists!",
    fiscalYearCheck:"Start Year and End Year must be consecutive!",
    checkFileSize:jQuery.validator.format("File size must be less than {0}KB."),
    banglaAlphabet: "This field must be in Bangla!",
    englishAlphabet: "This field must be in English!",
    regex: "Please check your input.",
    checkApplicationDeadline:"Deadline for this upzila epxired!",
    checkConceptionTerm:jQuery.validator.format("Please enter a value less than or equal to {0}."),
    uniqueEmailAddress:"Email is Already Used!"
});