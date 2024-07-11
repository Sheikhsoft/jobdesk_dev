class User {
  int? rid;
  String? id;
  String? countryCode;
  int? accountType;
  String? companyName;
  String? companyLogo;
  String? email;
  String? emailConfirmed;
  String? firstName;
  String? lastName;
  String? profilePicture;
  String? addressline1;
  String? addressline2;
  String? zip;
  String? place;
  int? country;
  String? state;
  String? currency;
  String? creditBalanceCurrency;
  int? language;
  String? langCode;
  int? userType;
  bool? isActive;
  bool? isSubAccount;
  String? googleRefreshToken;
  DateTime? lastTimeSpan;
  bool? onboardComplete;
  String? phone;
  bool? phoneNumberConfirmed;
  bool? twoFactorEnabled;
  String? twoFactorKey;
  String? userName;
  String? userRoles;
  bool? isTwitterLinked;
  bool? isFacebookLinked;
  bool? isGoogleLinked;
  bool? isLinkedinLinked;
  bool? autoPublishOnTwitter;
  bool? autoPublishOnFacebook;
  bool? autoPublishOnLinkedin;
  bool? isVerifiedCompany;
  bool? identityVerified;
  bool? isUserProductActive;
  bool? autoProcessProfileLeads;
  String? refCode;
  String? mobileUserType;

  User({
    this.rid,
    this.id,
    this.countryCode,
    this.accountType,
    this.companyName,
    this.companyLogo,
    this.email,
    this.emailConfirmed,
    this.firstName,
    this.lastName,
    this.profilePicture,
    this.addressline1,
    this.addressline2,
    this.zip,
    this.place,
    this.country,
    this.state,
    this.currency,
    this.creditBalanceCurrency,
    this.language,
    this.langCode,
    this.userType,
    this.isActive,
    this.isSubAccount,
    this.googleRefreshToken,
    this.lastTimeSpan,
    this.onboardComplete,
    this.phone,
    this.phoneNumberConfirmed,
    this.twoFactorEnabled,
    this.twoFactorKey,
    this.userName,
    this.userRoles,
    this.isTwitterLinked,
    this.isFacebookLinked,
    this.isGoogleLinked,
    this.isLinkedinLinked,
    this.autoPublishOnTwitter,
    this.autoPublishOnFacebook,
    this.autoPublishOnLinkedin,
    this.isVerifiedCompany,
    this.identityVerified,
    this.isUserProductActive,
    this.autoProcessProfileLeads,
    this.refCode,
    this.mobileUserType,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        rid: json["Rid"],
        id: json["Id"],
        countryCode: json["CountryCode"],
        accountType: json["AccountType"],
        companyName: json["CompanyName"],
        companyLogo: json["CompanyLogo"],
        email: json["Email"],
        emailConfirmed: json["EmailConfirmed"],
        firstName: json["FirstName"],
        lastName: json["LastName"],
        profilePicture: json["ProfilePicture"],
        addressline1: json["Addressline1"],
        addressline2: json["Addressline2"],
        zip: json["Zip"],
        place: json["Place"],
        country: json["Country"],
        state: json["State"],
        currency: json["Currency"],
        creditBalanceCurrency: json["CreditBalanceCurrency"],
        language: json["Language"],
        langCode: json["LangCode"],
        userType: json["UserType"],
        isActive: json["IsActive"],
        isSubAccount: json["IsSubAccount"],
        googleRefreshToken: json["GoogleRefreshToken"],
        lastTimeSpan: json["LastTimeSpan"] != null
            ? DateTime.parse(json["LastTimeSpan"])
            : null,
        onboardComplete: json["OnboardComplete"],
        phone: json["PhoneNumber"],
        phoneNumberConfirmed: json["PhoneNumberConfirmed"],
        twoFactorEnabled: json["TwoFactorEnabled"],
        twoFactorKey: json["TwoFactorKey"],
        userName: json["UserName"],
        userRoles: json["UserRoles"],
        isTwitterLinked: json["IsTwitterLinked"],
        isFacebookLinked: json["IsFacebookLinked"],
        isGoogleLinked: json["IsGoogleLinked"],
        isLinkedinLinked: json["IsLinkedinLinked"],
        autoPublishOnTwitter: json["AutoPublishOnTwitter"],
        autoPublishOnFacebook: json["AutoPublishOnFacebook"],
        autoPublishOnLinkedin: json["AutoPublishOnLinkedin"],
        isVerifiedCompany: json["IsVerifiedCompany"],
        identityVerified: json["IdentityVerified"],
        isUserProductActive: json["IsUserProductActive"],
        autoProcessProfileLeads: json["AutoProcessProfileLeads"],
        refCode: json["RefCode"],
        mobileUserType: json["MobileUserType"],
      );

  Map<String, dynamic> toJson() => {
        "Rid": rid,
        "Id": id,
        "CountryCode": countryCode,
        "AccountType": accountType,
        "CompanyName": companyName,
        "CompanyLogo": companyLogo,
        "Email": email,
        "EmailConfirmed": emailConfirmed,
        "FirstName": firstName,
        "LastName": lastName,
        "ProfilePicture": profilePicture,
        "Addressline1": addressline1,
        "Addressline2": addressline2,
        "Zip": zip,
        "Place": place,
        "Country": country,
        "State": state,
        "Currency": currency,
        "CreditBalanceCurrency": creditBalanceCurrency,
        "Language": language,
        "LangCode": langCode,
        "UserType": userType,
        "IsActive": isActive,
        "IsSubAccount": isSubAccount,
        "GoogleRefreshToken": googleRefreshToken,
        "LastTimeSpan": lastTimeSpan != null ? lastTimeSpan.toString() : null,
        "OnboardComplete": onboardComplete,
        "PhoneNumber": phone,
        "PhoneNumberConfirmed": phoneNumberConfirmed,
        "TwoFactorEnabled": twoFactorEnabled,
        "TwoFactorKey": twoFactorKey,
        "UserName": userName,
        "UserRoles": userRoles,
        "IsTwitterLinked": isTwitterLinked,
        "IsFacebookLinked": isFacebookLinked,
        "IsGoogleLinked": isGoogleLinked,
        "IsLinkedinLinked": isLinkedinLinked,
        "AutoPublishOnTwitter": autoPublishOnTwitter,
        "AutoPublishOnFacebook": autoPublishOnFacebook,
        "AutoPublishOnLinkedin": autoPublishOnLinkedin,
        "IsVerifiedCompany": isVerifiedCompany,
        "IdentityVerified": identityVerified,
        "IsUserProductActive": isUserProductActive,
        "AutoProcessProfileLeads": autoProcessProfileLeads,
        "RefCode": refCode,
        "MobileUserType": mobileUserType,
      };
}
