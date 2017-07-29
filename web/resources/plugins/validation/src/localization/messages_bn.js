/*
 * Translated default messages for the jQuery validation plugin.
 * Locale: bn_BD (Bengali, Bangladesh)
 */


$.extend($.validator.messages, {
    required: "এই তথ্যটি আবশ্যক।",
    remote: "এই তথ্যটি ঠিক করুন।",
    email: "অনুগ্রহ করে একটি সঠিক মেইল ঠিকানা লিখুন।",
    url: "অনুগ্রহ করে একটি সঠিক লিঙ্ক দিন।",
    date: "তারিখ সঠিক নয়।",
    dateISO: "অনুগ্রহ করে একটি সঠিক (ISO) তারিখ লিখুন।",
    number: "অনুগ্রহ করে একটি সঠিক নম্বর লিখুন।",
    digits: "এখানে শুধু সংখ্যা ব্যবহার করা যাবে।",
    creditcard: "অনুগ্রহ করে একটি ক্রেডিট কার্ডের সঠিক নম্বর লিখুন।",
    equalTo: "একই মান আবার লিখুন।",
    extension: "সঠিক ধরনের ফাইল আপলোড করুন।",
    maxlength: function (a) {
        return $.validator.format("{0} টির বেশি অক্ষর লেখা যাবে না।", getNumberInBangla('' + a + ''));
    },
    minlength: function (a) {
        return $.validator.format("{0} টির কম অক্ষর লেখা যাবে না।", getNumberInBangla('' + a + ''));
    },
    rangelength: function (a, b) {
        return $.validator.format("{0} থেকে {1} টি অক্ষর সম্বলিত মান লিখুন।", getNumberInBangla('' + a + ''), getNumberInBangla('' + b + ''));
    },
    range: function (a, b) {
        return $.validator.format("{0} থেকে {1} এর মধ্যে একটি মান ব্যবহার করুন।", getNumberInBangla('' + a + ''), getNumberInBangla('' + b + ''));
    },
    max: function (a) {
        return $.validator.format("অনুগ্রহ করে {0} বা তার চাইতে কম মান ব্যবহার করুন।", getNumberInBangla('' + a + ''));
    },
    min: function (a) {
        return $.validator.format("অনুগ্রহ করে {0} বা তার চাইতে বেশি মান ব্যবহার করুন।", getNumberInBangla('' + a + ''));
    },
    checkMobileNo: "তথ্যটি শুধুমাত্র নাম্বার হবে এবং শুরু করুন ০১৫/০১৬/০১৭/০১৮/০১৯ দিয়ে",
    checkNidNumber: "তথ্যটি শুধুমাত্র সংখ্যা হবে এবং শুন্য দিয়ে শুরু হবে না",
    uniquePaymentCycle: "এই পেমেন্ট চক্রটি আগে থেকেই আছে!",
    checkPaymentCycleSequence: "শুরুর মাস, শেষ মাসের চেয়ে আগে হওয়া উচিৎ!",
    uniqueUserID: "এই ব্যবহারকারীর আইডি ইতিমধ্যে ব্যবহৃত হয়েছে!",
    checkDateOfBirth: function (a) {        
        return $.validator.format("বয়স {0} থেকে {1} বছরের মধ্যে হতে হবে!", getNumberInBangla('' + a.min + ''), getNumberInBangla('' + a.max + ''));
    },
    uniqueMobileNo: "এই মোবাইল নম্বর ইতিমধ্যে ব্যবহৃত হয়েছে!",
    checkBeneficiaryID: "এই আইডি দিয়ে কোন ভাতাভোগী পাওয়া যাই নাই!",
    uniqueNid: "এই জাতীয় পরিচয় পত্রটি দিয়ে ইতিমধ্যেই আবেদন করা হয়েছে!",
    uniqueFiscalYear: "এই অর্থবছরটি আগে থেকেই আছে!",
    fiscalYearCheck: "শুরুর বছর এবং শেষ বছর ধারাবাহিক হতে হবে!",
    checkFileSize: function (a) {
        return $.validator.format("ফাইল সাইজ {0} কিলোবাইট এর কম হতে হবে।", getNumberInBangla('' + a + ''));
    },
    banglaAlphabet: "এই ফিল্ডটি অবশ্যই বাংলায় হবে!",
    englishAlphabet: "এই ফিল্ডটি অবশ্যই ইংরেজিতে হবে!",
    regex: "আপনার ইনপুট চেক করুন!",
    checkApplicationDeadline: "এই উপজেলার জন্যে আবেদনপত্রের সময়সীমা শেষ হয়ে গেছে!",
    checkConceptionTerm: function (a) {
        return $.validator.format("অনুগ্রহ করে {0} বা তার চাইতে কম মান ব্যবহার করুন।", getNumberInBangla('' + a + ''));
    },
    uniqueEmailAddress:"এই ই-মেইল ইতিমধ্যে ব্যবহৃত হয়েছে!"
});