/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package it.unisa.offerta_formativa.moodle.moodlerest;

import java.io.Serializable;

/**
 *
 * @author root
 */
public enum Capability implements Serializable {
  
  BLOCK_ACTIVITY_MODULES_ADDINSTANCE("block/activity_modules:addinstance"),
  BLOCK_ADMIN_BOOKMARKS_ADDINSTANCE("block/admin_bookmarks:addinstance"),
  BLOCK_ADMIN_BOOKMARKS_MYADDINSTANCE("block/admin_bookmarks:myaddinstance"),
  BLOCK_BADGES_ADDINSTANCE("block/badges:addinstance"),
  BLOCK_BADGES_MYADDINSTANCE("block/badges:myaddinstance"),
  BLOCK_BLOG_MENU_ADDINSTANCE("block/blog_menu:addinstance"),
  BLOCK_BLOG_RECENT_ADDINSTANCE("block/blog_recent:addinstance"),
  BLOCK_BLOG_TAGS_ADDINSTANCE("block/blog_tags:addinstance"),
  BLOCK_CALENDAR_MONTH_ADDINSTANCE("block/calendar_month:addinstance"),
  BLOCK_CALENDAR_MONTH_MYADDINSTANCE("block/calendar_month:myaddinstance"),
  BLOCK_CALENDAR_UPCOMING_ADDINSTANCE("block/calendar_upcoming:addinstance"),
  BLOCK_CALENDAR_UPCOMING_MYADDINSTANCE("block/calendar_upcoming:myaddinstance"),
  BLOCK_COMMENTS_ADDINSTANCE("block/comments:addinstance"),
  BLOCK_COMMENTS_MYADDINSTANCE("block/comments:myaddinstance"),
  BLOCK_COMMUNITY_ADDINSTANCE("block/community:addinstance"),
  BLOCK_COMMUNITY_MYADDINSTANCE("block/community:myaddinstance"),
  BLOCK_COMPLETIONSTATUS_ADDINSTANCE("block/completionstatus:addinstance"),
  BLOCK_COURSE_LIST_ADDINSTANCE("block/course_list:addinstance"),
  BLOCK_COURSE_LIST_MYADDINSTANCE("block/course_list:myaddinstance"),
  BLOCK_COURSE_OVERVIEW_ADDINSTANCE("block/course_overview:addinstance"),
  BLOCK_COURSE_OVERVIEW_MYADDINSTANCE("block/course_overview:myaddinstance"),
  BLOCK_COURSE_SUMMARY_ADDINSTANCE("block/course_summary:addinstance"),
  BLOCK_FEEDBACK_ADDINSTANCE("block/feedback:addinstance"),
  BLOCK_GLOSSARY_RANDOM_ADDINSTANCE("block/glossary_random:addinstance"),
  BLOCK_GLOSSARY_RANDOM_MYADDINSTANCE("block/glossary_random:myaddinstance"),
  BLOCK_HTML_ADDINSTANCE("block/html:addinstance"),
  BLOCK_HTML_MYADDINSTANCE("block/html:myaddinstance"),
  BLOCK_LOGIN_ADDINSTANCE("block/login:addinstance"),
  BLOCK_MENTEES_ADDINSTANCE("block/mentees:addinstance"),
  BLOCK_MENTEES_MYADDINSTANCE("block/mentees:myaddinstance"),
  BLOCK_MESSAGES_ADDINSTANCE("block/messages:addinstance"),
  BLOCK_MESSAGES_MYADDINSTANCE("block/messages:myaddinstance"),
  BLOCK_MNET_HOSTS_ADDINSTANCE("block/mnet_hosts:addinstance"),
  BLOCK_MNET_HOSTS_MYADDINSTANCE("block/mnet_hosts:myaddinstance"),
  BLOCK_MYPROFILE_ADDINSTANCE("block/myprofile:addinstance"),
  BLOCK_MYPROFILE_MYADDINSTANCE("block/myprofile:myaddinstance"),
  BLOCK_NAVIGATION_ADDINSTANCE("block/navigation:addinstance"),
  BLOCK_NAVIGATION_MYADDINSTANCE("block/navigation:myaddinstance"),
  BLOCK_NEWS_ITEMS_ADDINSTANCE("block/news_items:addinstance"),
  BLOCK_NEWS_ITEMS_MYADDINSTANCE("block/news_items:myaddinstance"),
  BLOCK_ONLINE_USERS_ADDINSTANCE("block/online_users:addinstance"),
  BLOCK_ONLINE_USERS_MYADDINSTANCE("block/online_users:myaddinstance"),
  BLOCK_ONLINE_USERS_VIEWLIST("block/online_users:viewlist"),
  BLOCK_PARTICIPANTS_ADDINSTANCE("block/participants:addinstance"),
  BLOCK_PRIVATE_FILES_ADDINSTANCE("block/private_files:addinstance"),
  BLOCK_PRIVATE_FILES_MYADDINSTANCE("block/private_files:myaddinstance"),
  BLOCK_QUIZ_RESULTS_ADDINSTANCE("block/quiz_results:addinstance"),
  BLOCK_RECENT_ACTIVITY_ADDINSTANCE("block/recent_activity:addinstance"),
  BLOCK_RSS_CLIENT_ADDINSTANCE("block/rss_client:addinstance"),
  BLOCK_RSS_CLIENT_MANAGEANYFEEDS("block/rss_client:manageanyfeeds"),
  BLOCK_RSS_CLIENT_MANAGEOWNFEEDS("block/rss_client:manageownfeeds"),
  BLOCK_RSS_CLIENT_MYADDINSTANCE("block/rss_client:myaddinstance"),
  BLOCK_SEARCH_FORUMS_ADDINSTANCE("block/search_forums:addinstance"),
  BLOCK_SECTION_LINKS_ADDINSTANCE("block/section_links:addinstance"),
  BLOCK_SELFCOMPLETION_ADDINSTANCE("block/selfcompletion:addinstance"),
  BLOCK_SETTINGS_ADDINSTANCE("block/settings:addinstance"),
  BLOCK_SETTINGS_MYADDINSTANCE("block/settings:myaddinstance"),
  BLOCK_SITE_MAIN_MENU_ADDINSTANCE("block/site_main_menu:addinstance"),
  BLOCK_SOCIAL_ACTIVITIES_ADDINSTANCE("block/social_activities:addinstance"),
  BLOCK_TAG_FLICKR_ADDINSTANCE("block/tag_flickr:addinstance"),
  BLOCK_TAG_YOUTUBE_ADDINSTANCE("block/tag_youtube:addinstance"),
  BLOCK_TAGS_ADDINSTANCE("block/tags:addinstance"),
  BLOCK_TAGS_MYADDINSTANCE("block/tags:myaddinstance"),
  BOOKTOOL_EXPORTIMSCP_EXPORT("booktool/exportimscp:export"),
  BOOKTOOL_IMPORTHTML_IMPORT("booktool/importhtml:import"),
  BOOKTOOL_PRINT_PRINT("booktool/print:print"),
  ENROL_AUTHORIZE_CONFIG("enrol/authorize:config"),
  ENROL_AUTHORIZE_MANAGE("enrol/authorize:manage"),
  ENROL_AUTHORIZE_MANAGEPAYMENTS("enrol/authorize:managepayments"),
  ENROL_AUTHORIZE_UNENROL("enrol/authorize:unenrol"),
  ENROL_AUTHORIZE_UNENROLSELF("enrol/authorize:unenrolself"),
  ENROL_AUTHORIZE_UPLOADCSV("enrol/authorize:uploadcsv"),
  ENROL_CATEGORY_SYNCHRONISED("enrol/category:synchronised"),
  ENROL_COHORT_CONFIG("enrol/cohort:config"),
  ENROL_COHORT_UNENROL("enrol/cohort:unenrol"),
  ENROL_DATABASE_UNENROL("enrol/database:unenrol"),
  ENROL_FLATFILE_MANAGE("enrol/flatfile:manage"),
  ENROL_FLATFILE_UNENROL("enrol/flatfile:unenrol"),
  ENROL_GUEST_CONFIG("enrol/guest:config"),
  ENROL_LDAP_MANAGE("enrol/ldap:manage"),
  ENROL_MANUAL_CONFIG("enrol/manual:config"),
  ENROL_MANUAL_ENROL("enrol/manual:enrol"),
  ENROL_MANUAL_MANAGE("enrol/manual:manage"),
  ENROL_MANUAL_UNENROL("enrol/manual:unenrol"),
  ENROL_MANUAL_UNENROLSELF("enrol/manual:unenrolself"),
  ENROL_META_CONFIG("enrol/meta:config"),
  ENROL_META_SELECTASLINKED("enrol/meta:selectaslinked"),
  ENROL_META_UNENROL("enrol/meta:unenrol"),
  ENROL_PAYPAL_CONFIG("enrol/paypal:config"),
  ENROL_PAYPAL_MANAGE("enrol/paypal:manage"),
  ENROL_PAYPAL_UNENROL("enrol/paypal:unenrol"),
  ENROL_PAYPAL_UNENROLSELF("enrol/paypal:unenrolself"),
  ENROL_SELF_CONFIG("enrol/self:config"),
  ENROL_SELF_MANAGE("enrol/self:manage"),
  ENROL_SELF_UNENROL("enrol/self:unenrol"),
  ENROL_SELF_UNENROLSELF("enrol/self:unenrolself"),
  GRADEEXPORT_ODS_PUBLISH("gradeexport/ods:publish"),
  GRADEEXPORT_ODS_VIEW("gradeexport/ods:view"),
  GRADEEXPORT_TXT_PUBLISH("gradeexport/txt:publish"),
  GRADEEXPORT_TXT_VIEW("gradeexport/txt:view"),
  GRADEEXPORT_XLS_PUBLISH("gradeexport/xls:publish"),
  GRADEEXPORT_XLS_VIEW("gradeexport/xls:view"),
  GRADEEXPORT_XML_PUBLISH("gradeexport/xml:publish"),
  GRADEEXPORT_XML_VIEW("gradeexport/xml:view"),
  GRADEIMPORT_CSV_VIEW("gradeimport/csv:view"),
  GRADEIMPORT_XML_PUBLISH("gradeimport/xml:publish"),
  GRADEIMPORT_XML_VIEW("gradeimport/xml:view"),
  GRADEREPORT_GRADER_VIEW("gradereport/grader:view"),
  GRADEREPORT_OUTCOMES_VIEW("gradereport/outcomes:view"),
  GRADEREPORT_OVERVIEW_VIEW("gradereport/overview:view"),
  GRADEREPORT_USER_VIEW("gradereport/user:view"),
  MOD_ASSIGN_ADDINSTANCE("mod/assign:addinstance"),
  MOD_ASSIGN_EXPORTOWNSUBMISSION("mod/assign:exportownsubmission"),
  MOD_ASSIGN_GRADE("mod/assign:grade"),
  MOD_ASSIGN_GRANTEXTENSION("mod/assign:grantextension"),
  MOD_ASSIGN_REVEALIDENTITIES("mod/assign:revealidentities"),
  MOD_ASSIGN_SUBMIT("mod/assign:submit"),
  MOD_ASSIGN_VIEW("mod/assign:view"),
  MOD_ASSIGNMENT_ADDINSTANCE("mod/assignment:addinstance"),
  MOD_ASSIGNMENT_EXPORTOWNSUBMISSION("mod/assignment:exportownsubmission"),
  MOD_ASSIGNMENT_GRADE("mod/assignment:grade"),
  MOD_ASSIGNMENT_SUBMIT("mod/assignment:submit"),
  MOD_ASSIGNMENT_VIEW("mod/assignment:view"),
  MOD_BOOK_ADDINSTANCE("mod/book:addinstance"),
  MOD_BOOK_EDIT("mod/book:edit"),
  MOD_BOOK_READ("mod/book:read"),
  MOD_BOOK_VIEWHIDDENCHAPTERS("mod/book:viewhiddenchapters"),
  MOD_CHAT_ADDINSTANCE("mod/chat:addinstance"),
  MOD_CHAT_CHAT("mod/chat:chat"),
  MOD_CHAT_DELETELOG("mod/chat:deletelog"),
  MOD_CHAT_EXPORTPARTICIPATEDSESSION("mod/chat:exportparticipatedsession"),
  MOD_CHAT_EXPORTSESSION("mod/chat:exportsession"),
  MOD_CHAT_READLOG("mod/chat:readlog"),
  MOD_CHOICE_ADDINSTANCE("mod/choice:addinstance"),
  MOD_CHOICE_CHOOSE("mod/choice:choose"),
  MOD_CHOICE_DELETERESPONSES("mod/choice:deleteresponses"),
  MOD_CHOICE_DOWNLOADRESPONSES("mod/choice:downloadresponses"),
  MOD_CHOICE_READRESPONSES("mod/choice:readresponses"),
  MOD_DATA_ADDINSTANCE("mod/data:addinstance"),
  MOD_DATA_APPROVE("mod/data:approve"),
  MOD_DATA_COMMENT("mod/data:comment"),
  MOD_DATA_EXPORTALLENTRIES("mod/data:exportallentries"),
  MOD_DATA_EXPORTENTRY("mod/data:exportentry"),
  MOD_DATA_EXPORTOWNENTRY("mod/data:exportownentry"),
  MOD_DATA_EXPORTUSERINFO("mod/data:exportuserinfo"),
  MOD_DATA_MANAGECOMMENTS("mod/data:managecomments"),
  MOD_DATA_MANAGEENTRIES("mod/data:manageentries"),
  MOD_DATA_MANAGETEMPLATES("mod/data:managetemplates"),
  MOD_DATA_MANAGEUSERPRESETS("mod/data:manageuserpresets"),
  MOD_DATA_RATE("mod/data:rate"),
  MOD_DATA_VIEWALLRATINGS("mod/data:viewallratings"),
  MOD_DATA_VIEWALLUSERPRESETS("mod/data:viewalluserpresets"),
  MOD_DATA_VIEWANYRATING("mod/data:viewanyrating"),
  MOD_DATA_VIEWENTRY("mod/data:viewentry"),
  MOD_DATA_VIEWRATING("mod/data:viewrating"),
  MOD_DATA_WRITEENTRY("mod/data:writeentry"),
  MOD_FEEDBACK_ADDINSTANCE("mod/feedback:addinstance"),
  MOD_FEEDBACK_COMPLETE("mod/feedback:complete"),
  MOD_FEEDBACK_CREATEPRIVATETEMPLATE("mod/feedback:createprivatetemplate"),
  MOD_FEEDBACK_CREATEPUBLICTEMPLATE("mod/feedback:createpublictemplate"),
  MOD_FEEDBACK_DELETESUBMISSIONS("mod/feedback:deletesubmissions"),
  MOD_FEEDBACK_DELETETEMPLATE("mod/feedback:deletetemplate"),
  MOD_FEEDBACK_EDITITEMS("mod/feedback:edititems"),
  MOD_FEEDBACK_MAPCOURSE("mod/feedback:mapcourse"),
  MOD_FEEDBACK_RECEIVEMAIL("mod/feedback:receivemail"),
  MOD_FEEDBACK_VIEW("mod/feedback:view"),
  MOD_FEEDBACK_VIEWANALYSEPAGE("mod/feedback:viewanalysepage"),
  MOD_FEEDBACK_VIEWREPORTS("mod/feedback:viewreports"),
  MOD_FOLDER_ADDINSTANCE("mod/folder:addinstance"),
  MOD_FOLDER_MANAGEFILES("mod/folder:managefiles"),
  MOD_FOLDER_VIEW("mod/folder:view"),
  MOD_FORUM_ADDINSTANCE("mod/forum:addinstance"),
  MOD_FORUM_ADDNEWS("mod/forum:addnews"),
  MOD_FORUM_ADDQUESTION("mod/forum:addquestion"),
  MOD_FORUM_ALLOWFORCESUBSCRIBE("mod/forum:allowforcesubscribe"),
  MOD_FORUM_CREATEATTACHMENT("mod/forum:createattachment"),
  MOD_FORUM_DELETEANYPOST("mod/forum:deleteanypost"),
  MOD_FORUM_DELETEOWNPOST("mod/forum:deleteownpost"),
  MOD_FORUM_EDITANYPOST("mod/forum:editanypost"),
  MOD_FORUM_EXPORTDISCUSSION("mod/forum:exportdiscussion"),
  MOD_FORUM_EXPORTOWNPOST("mod/forum:exportownpost"),
  MOD_FORUM_EXPORTPOST("mod/forum:exportpost"),
  MOD_FORUM_MANAGESUBSCRIPTIONS("mod/forum:managesubscriptions"),
  MOD_FORUM_MOVEDISCUSSIONS("mod/forum:movediscussions"),
  MOD_FORUM_POSTWITHOUTTHROTTLING("mod/forum:postwithoutthrottling"),
  MOD_FORUM_RATE("mod/forum:rate"),
  MOD_FORUM_REPLYNEWS("mod/forum:replynews"),
  MOD_FORUM_REPLYPOST("mod/forum:replypost"),
  MOD_FORUM_SPLITDISCUSSIONS("mod/forum:splitdiscussions"),
  MOD_FORUM_STARTDISCUSSION("mod/forum:startdiscussion"),
  MOD_FORUM_VIEWALLRATINGS("mod/forum:viewallratings"),
  MOD_FORUM_VIEWANYRATING("mod/forum:viewanyrating"),
  MOD_FORUM_VIEWDISCUSSION("mod/forum:viewdiscussion"),
  MOD_FORUM_VIEWHIDDENTIMEDPOSTS("mod/forum:viewhiddentimedposts"),
  MOD_FORUM_VIEWQANDAWITHOUTPOSTING("mod/forum:viewqandawithoutposting"),
  MOD_FORUM_VIEWRATING("mod/forum:viewrating"),
  MOD_FORUM_VIEWSUBSCRIBERS("mod/forum:viewsubscribers"),
  MOD_GLOSSARY_ADDINSTANCE("mod/glossary:addinstance"),
  MOD_GLOSSARY_APPROVE("mod/glossary:approve"),
  MOD_GLOSSARY_COMMENT("mod/glossary:comment"),
  MOD_GLOSSARY_EXPORT("mod/glossary:export"),
  MOD_GLOSSARY_EXPORTENTRY("mod/glossary:exportentry"),
  MOD_GLOSSARY_EXPORTOWNENTRY("mod/glossary:exportownentry"),
  MOD_GLOSSARY_IMPORT("mod/glossary:import"),
  MOD_GLOSSARY_MANAGECATEGORIES("mod/glossary:managecategories"),
  MOD_GLOSSARY_MANAGECOMMENTS("mod/glossary:managecomments"),
  MOD_GLOSSARY_MANAGEENTRIES("mod/glossary:manageentries"),
  MOD_GLOSSARY_RATE("mod/glossary:rate"),
  MOD_GLOSSARY_VIEW("mod/glossary:view"),
  MOD_GLOSSARY_VIEWALLRATINGS("mod/glossary:viewallratings"),
  MOD_GLOSSARY_VIEWANYRATING("mod/glossary:viewanyrating"),
  MOD_GLOSSARY_VIEWRATING("mod/glossary:viewrating"),
  MOD_GLOSSARY_WRITE("mod/glossary:write"),
  MOD_IMSCP_ADDINSTANCE("mod/imscp:addinstance"),
  MOD_IMSCP_VIEW("mod/imscp:view"),
  MOD_LABEL_ADDINSTANCE("mod/label:addinstance"),
  MOD_LESSON_ADDINSTANCE("mod/lesson:addinstance"),
  MOD_LESSON_EDIT("mod/lesson:edit"),
  MOD_LESSON_MANAGE("mod/lesson:manage"),
  MOD_LTI_ADDCOURSETOOL("mod/lti:addcoursetool"),
  MOD_LTI_ADDINSTANCE("mod/lti:addinstance"),
  MOD_LTI_GRADE("mod/lti:grade"),
  MOD_LTI_MANAGE("mod/lti:manage"),
  MOD_LTI_REQUESTTOOLADD("mod/lti:requesttooladd"),
  MOD_LTI_VIEW("mod/lti:view"),
  MOD_PAGE_ADDINSTANCE("mod/page:addinstance"),
  MOD_PAGE_VIEW("mod/page:view"),
  MOD_QUIZ_ADDINSTANCE("mod/quiz:addinstance"),
  MOD_QUIZ_ATTEMPT("mod/quiz:attempt"),
  MOD_QUIZ_DELETEATTEMPTS("mod/quiz:deleteattempts"),
  MOD_QUIZ_EMAILCONFIRMSUBMISSION("mod/quiz:emailconfirmsubmission"),
  MOD_QUIZ_EMAILNOTIFYSUBMISSION("mod/quiz:emailnotifysubmission"),
  MOD_QUIZ_EMAILWARNOVERDUE("mod/quiz:emailwarnoverdue"),
  MOD_QUIZ_GRADE("mod/quiz:grade"),
  MOD_QUIZ_IGNORETIMELIMITS("mod/quiz:ignoretimelimits"),
  MOD_QUIZ_MANAGE("mod/quiz:manage"),
  MOD_QUIZ_MANAGEOVERRIDES("mod/quiz:manageoverrides"),
  MOD_QUIZ_PREVIEW("mod/quiz:preview"),
  MOD_QUIZ_REGRADE("mod/quiz:regrade"),
  MOD_QUIZ_REVIEWMYATTEMPTS("mod/quiz:reviewmyattempts"),
  MOD_QUIZ_VIEW("mod/quiz:view"),
  MOD_QUIZ_VIEWREPORTS("mod/quiz:viewreports"),
  MOD_RESOURCE_ADDINSTANCE("mod/resource:addinstance"),
  MOD_RESOURCE_VIEW("mod/resource:view"),
  MOD_SCORM_ADDINSTANCE("mod/scorm:addinstance"),
  MOD_SCORM_DELETEOWNRESPONSES("mod/scorm:deleteownresponses"),
  MOD_SCORM_DELETERESPONSES("mod/scorm:deleteresponses"),
  MOD_SCORM_SAVETRACK("mod/scorm:savetrack"),
  MOD_SCORM_SKIPVIEW("mod/scorm:skipview"),
  MOD_SCORM_VIEWREPORT("mod/scorm:viewreport"),
  MOD_SCORM_VIEWSCORES("mod/scorm:viewscores"),
  MOD_SURVEY_ADDINSTANCE("mod/survey:addinstance"),
  MOD_SURVEY_DOWNLOAD("mod/survey:download"),
  MOD_SURVEY_PARTICIPATE("mod/survey:participate"),
  MOD_SURVEY_READRESPONSES("mod/survey:readresponses"),
  MOD_URL_ADDINSTANCE("mod/url:addinstance"),
  MOD_URL_VIEW("mod/url:view"),
  MOD_WIKI_ADDINSTANCE("mod/wiki:addinstance"),
  MOD_WIKI_CREATEPAGE("mod/wiki:createpage"),
  MOD_WIKI_EDITCOMMENT("mod/wiki:editcomment"),
  MOD_WIKI_EDITPAGE("mod/wiki:editpage"),
  MOD_WIKI_MANAGECOMMENT("mod/wiki:managecomment"),
  MOD_WIKI_MANAGEFILES("mod/wiki:managefiles"),
  MOD_WIKI_MANAGEWIKI("mod/wiki:managewiki"),
  MOD_WIKI_OVERRIDELOCK("mod/wiki:overridelock"),
  MOD_WIKI_VIEWCOMMENT("mod/wiki:viewcomment"),
  MOD_WIKI_VIEWPAGE("mod/wiki:viewpage"),
  MOD_WORKSHOP_ADDINSTANCE("mod/workshop:addinstance"),
  MOD_WORKSHOP_ALLOCATE("mod/workshop:allocate"),
  MOD_WORKSHOP_EDITDIMENSIONS("mod/workshop:editdimensions"),
  MOD_WORKSHOP_IGNOREDEADLINES("mod/workshop:ignoredeadlines"),
  MOD_WORKSHOP_MANAGEEXAMPLES("mod/workshop:manageexamples"),
  MOD_WORKSHOP_OVERRIDEGRADES("mod/workshop:overridegrades"),
  MOD_WORKSHOP_PEERASSESS("mod/workshop:peerassess"),
  MOD_WORKSHOP_PUBLISHSUBMISSIONS("mod/workshop:publishsubmissions"),
  MOD_WORKSHOP_SUBMIT("mod/workshop:submit"),
  MOD_WORKSHOP_SWITCHPHASE("mod/workshop:switchphase"),
  MOD_WORKSHOP_VIEW("mod/workshop:view"),
  MOD_WORKSHOP_VIEWALLASSESSMENTS("mod/workshop:viewallassessments"),
  MOD_WORKSHOP_VIEWALLSUBMISSIONS("mod/workshop:viewallsubmissions"),
  MOD_WORKSHOP_VIEWAUTHORNAMES("mod/workshop:viewauthornames"),
  MOD_WORKSHOP_VIEWAUTHORPUBLISHED("mod/workshop:viewauthorpublished"),
  MOD_WORKSHOP_VIEWPUBLISHEDSUBMISSIONS("mod/workshop:viewpublishedsubmissions"),
  MOD_WORKSHOP_VIEWREVIEWERNAMES("mod/workshop:viewreviewernames"),
  MOODLE_BACKUP_ANONYMISE("moodle/backup:anonymise"),
  MOODLE_BACKUP_BACKUPACTIVITY("moodle/backup:backupactivity"),
  MOODLE_BACKUP_BACKUPCOURSE("moodle/backup:backupcourse"),
  MOODLE_BACKUP_BACKUPSECTION("moodle/backup:backupsection"),
  MOODLE_BACKUP_BACKUPTARGETHUB("moodle/backup:backuptargethub"),
  MOODLE_BACKUP_BACKUPTARGETIMPORT("moodle/backup:backuptargetimport"),
  MOODLE_BACKUP_CONFIGURE("moodle/backup:configure"),
  MOODLE_BACKUP_DOWNLOADFILE("moodle/backup:downloadfile"),
  MOODLE_BACKUP_USERINFO("moodle/backup:userinfo"),
  MOODLE_BADGES_AWARDBADGE("moodle/badges:awardbadge"),
  MOODLE_BADGES_CONFIGURECRITERIA("moodle/badges:configurecriteria"),
  MOODLE_BADGES_CONFIGUREDETAILS("moodle/badges:configuredetails"),
  MOODLE_BADGES_CONFIGUREMESSAGES("moodle/badges:configuremessages"),
  MOODLE_BADGES_CREATEBADGE("moodle/badges:createbadge"),
  MOODLE_BADGES_DELETEBADGE("moodle/badges:deletebadge"),
  MOODLE_BADGES_EARNBADGE("moodle/badges:earnbadge"),
  MOODLE_BADGES_MANAGEGLOBALSETTINGS("moodle/badges:manageglobalsettings"),
  MOODLE_BADGES_MANAGEOWNBADGES("moodle/badges:manageownbadges"),
  MOODLE_BADGES_VIEWAWARDED("moodle/badges:viewawarded"),
  MOODLE_BADGES_VIEWBADGES("moodle/badges:viewbadges"),
  MOODLE_BADGES_VIEWOTHERBADGES("moodle/badges:viewotherbadges"),
  MOODLE_BLOCK_EDIT("moodle/block:edit"),
  MOODLE_BLOCK_VIEW("moodle/block:view"),
  MOODLE_BLOG_ASSOCIATECOURSE("moodle/blog:associatecourse"),
  MOODLE_BLOG_ASSOCIATEMODULE("moodle/blog:associatemodule"),
  MOODLE_BLOG_CREATE("moodle/blog:create"),
  MOODLE_BLOG_MANAGEENTRIES("moodle/blog:manageentries"),
  MOODLE_BLOG_MANAGEEXTERNAL("moodle/blog:manageexternal"),
  MOODLE_BLOG_SEARCH("moodle/blog:search"),
  MOODLE_BLOG_VIEW("moodle/blog:view"),
  MOODLE_BLOG_VIEWDRAFTS("moodle/blog:viewdrafts"),
  MOODLE_CALENDAR_MANAGEENTRIES("moodle/calendar:manageentries"),
  MOODLE_CALENDAR_MANAGEGROUPENTRIES("moodle/calendar:managegroupentries"),
  MOODLE_CALENDAR_MANAGEOWNENTRIES("moodle/calendar:manageownentries"),
  MOODLE_CATEGORY_MANAGE("moodle/category:manage"),
  MOODLE_CATEGORY_VIEWHIDDENCATEGORIES("moodle/category:viewhiddencategories"),
  MOODLE_COHORT_ASSIGN("moodle/cohort:assign"),
  MOODLE_COHORT_MANAGE("moodle/cohort:manage"),
  MOODLE_COHORT_VIEW("moodle/cohort:view"),
  MOODLE_COMMENT_DELETE("moodle/comment:delete"),
  MOODLE_COMMENT_POST("moodle/comment:post"),
  MOODLE_COMMENT_VIEW("moodle/comment:view"),
  MOODLE_COMMUNITY_ADD("moodle/community:add"),
  MOODLE_COMMUNITY_DOWNLOAD("moodle/community:download"),
  MOODLE_COURSE_ACTIVITYVISIBILITY("moodle/course:activityvisibility"),
  MOODLE_COURSE_BULKMESSAGING("moodle/course:bulkmessaging"),
  MOODLE_COURSE_CHANGECATEGORY("moodle/course:changecategory"),
  MOODLE_COURSE_CHANGEFULLNAME("moodle/course:changefullname"),
  MOODLE_COURSE_CHANGEIDNUMBER("moodle/course:changeidnumber"),
  MOODLE_COURSE_CHANGESHORTNAME("moodle/course:changeshortname"),
  MOODLE_COURSE_CHANGESUMMARY("moodle/course:changesummary"),
  MOODLE_COURSE_CREATE("moodle/course:create"),
  MOODLE_COURSE_DELETE("moodle/course:delete"),
  MOODLE_COURSE_ENROLCONFIG("moodle/course:enrolconfig"),
  MOODLE_COURSE_ENROLREVIEW("moodle/course:enrolreview"),
  MOODLE_COURSE_IGNOREFILESIZELIMITS("moodle/course:ignorefilesizelimits"),
  MOODLE_COURSE_ISINCOMPLETIONREPORTS("moodle/course:isincompletionreports"),
  MOODLE_COURSE_MANAGEACTIVITIES("moodle/course:manageactivities"),
  MOODLE_COURSE_MANAGEFILES("moodle/course:managefiles"),
  MOODLE_COURSE_MANAGEGROUPS("moodle/course:managegroups"),
  MOODLE_COURSE_MANAGESCALES("moodle/course:managescales"),
  MOODLE_COURSE_MARKCOMPLETE("moodle/course:markcomplete"),
  MOODLE_COURSE_MOVESECTIONS("moodle/course:movesections"),
  MOODLE_COURSE_PUBLISH("moodle/course:publish"),
  MOODLE_COURSE_REQUEST("moodle/course:request"),
  MOODLE_COURSE_RESET("moodle/course:reset"),
  MOODLE_COURSE_SECTIONVISIBILITY("moodle/course:sectionvisibility"),
  MOODLE_COURSE_SETCURRENTSECTION("moodle/course:setcurrentsection"),
  MOODLE_COURSE_UPDATE("moodle/course:update"),
  MOODLE_COURSE_USEREMAIL("moodle/course:useremail"),
  MOODLE_COURSE_VIEW("moodle/course:view"),
  MOODLE_COURSE_VIEWHIDDENACTIVITIES("moodle/course:viewhiddenactivities"),
  MOODLE_COURSE_VIEWHIDDENCOURSES("moodle/course:viewhiddencourses"),
  MOODLE_COURSE_VIEWHIDDENSECTIONS("moodle/course:viewhiddensections"),
  MOODLE_COURSE_VIEWHIDDENUSERFIELDS("moodle/course:viewhiddenuserfields"),
  MOODLE_COURSE_VIEWPARTICIPANTS("moodle/course:viewparticipants"),
  MOODLE_COURSE_VIEWSCALES("moodle/course:viewscales"),
  MOODLE_COURSE_VIEWSUSPENDEDUSERS("moodle/course:viewsuspendedusers"),
  MOODLE_COURSE_VISIBILITY("moodle/course:visibility"),
  MOODLE_FILTER_MANAGE("moodle/filter:manage"),
  MOODLE_GRADE_EDIT("moodle/grade:edit"),
  MOODLE_GRADE_EXPORT("moodle/grade:export"),
  MOODLE_GRADE_HIDE("moodle/grade:hide"),
  MOODLE_GRADE_IMPORT("moodle/grade:import"),
  MOODLE_GRADE_LOCK("moodle/grade:lock"),
  MOODLE_GRADE_MANAGE("moodle/grade:manage"),
  MOODLE_GRADE_MANAGEGRADINGFORMS("moodle/grade:managegradingforms"),
  MOODLE_GRADE_MANAGELETTERS("moodle/grade:manageletters"),
  MOODLE_GRADE_MANAGEOUTCOMES("moodle/grade:manageoutcomes"),
  MOODLE_GRADE_MANAGESHAREDFORMS("moodle/grade:managesharedforms"),
  MOODLE_GRADE_SHAREGRADINGFORMS("moodle/grade:sharegradingforms"),
  MOODLE_GRADE_UNLOCK("moodle/grade:unlock"),
  MOODLE_GRADE_VIEW("moodle/grade:view"),
  MOODLE_GRADE_VIEWALL("moodle/grade:viewall"),
  MOODLE_GRADE_VIEWHIDDEN("moodle/grade:viewhidden"),
  MOODLE_MY_CONFIGSYSPAGES("moodle/my:configsyspages"),
  MOODLE_MY_MANAGEBLOCKS("moodle/my:manageblocks"),
  MOODLE_NOTES_MANAGE("moodle/notes:manage"),
  MOODLE_NOTES_VIEW("moodle/notes:view"),
  MOODLE_PORTFOLIO_EXPORT("moodle/portfolio:export"),
  MOODLE_QUESTION_ADD("moodle/question:add"),
  MOODLE_QUESTION_CONFIG("moodle/question:config"),
  MOODLE_QUESTION_EDITALL("moodle/question:editall"),
  MOODLE_QUESTION_EDITMINE("moodle/question:editmine"),
  MOODLE_QUESTION_FLAG("moodle/question:flag"),
  MOODLE_QUESTION_MANAGECATEGORY("moodle/question:managecategory"),
  MOODLE_QUESTION_MOVEALL("moodle/question:moveall"),
  MOODLE_QUESTION_MOVEMINE("moodle/question:movemine"),
  MOODLE_QUESTION_USEALL("moodle/question:useall"),
  MOODLE_QUESTION_USEMINE("moodle/question:usemine"),
  MOODLE_QUESTION_VIEWALL("moodle/question:viewall"),
  MOODLE_QUESTION_VIEWMINE("moodle/question:viewmine"),
  MOODLE_RATING_RATE("moodle/rating:rate"),
  MOODLE_RATING_VIEW("moodle/rating:view"),
  MOODLE_RATING_VIEWALL("moodle/rating:viewall"),
  MOODLE_RATING_VIEWANY("moodle/rating:viewany"),
  MOODLE_RESTORE_CONFIGURE("moodle/restore:configure"),
  MOODLE_RESTORE_CREATEUSER("moodle/restore:createuser"),
  MOODLE_RESTORE_RESTOREACTIVITY("moodle/restore:restoreactivity"),
  MOODLE_RESTORE_RESTORECOURSE("moodle/restore:restorecourse"),
  MOODLE_RESTORE_RESTORESECTION("moodle/restore:restoresection"),
  MOODLE_RESTORE_RESTORETARGETHUB("moodle/restore:restoretargethub"),
  MOODLE_RESTORE_RESTORETARGETIMPORT("moodle/restore:restoretargetimport"),
  MOODLE_RESTORE_ROLLDATES("moodle/restore:rolldates"),
  MOODLE_RESTORE_UPLOADFILE("moodle/restore:uploadfile"),
  MOODLE_RESTORE_USERINFO("moodle/restore:userinfo"),
  MOODLE_RESTORE_VIEWAUTOMATEDFILEAREA("moodle/restore:viewautomatedfilearea"),
  MOODLE_ROLE_ASSIGN("moodle/role:assign"),
  MOODLE_ROLE_MANAGE("moodle/role:manage"),
  MOODLE_ROLE_OVERRIDE("moodle/role:override"),
  MOODLE_ROLE_REVIEW("moodle/role:review"),
  MOODLE_ROLE_SAFEOVERRIDE("moodle/role:safeoverride"),
  MOODLE_ROLE_SWITCHROLES("moodle/role:switchroles"),
  MOODLE_SITE_ACCESSALLGROUPS("moodle/site:accessallgroups"),
  MOODLE_SITE_APPROVECOURSE("moodle/site:approvecourse"),
  MOODLE_SITE_CONFIG("moodle/site:config"),
  MOODLE_SITE_DOCLINKS("moodle/site:doclinks"),
  MOODLE_SITE_MANAGEBLOCKS("moodle/site:manageblocks"),
  MOODLE_SITE_MNETLOGINTOREMOTE("moodle/site:mnetlogintoremote"),
  MOODLE_SITE_READALLMESSAGES("moodle/site:readallmessages"),
  MOODLE_SITE_SENDMESSAGE("moodle/site:sendmessage"),
  MOODLE_SITE_TRUSTCONTENT("moodle/site:trustcontent"),
  MOODLE_SITE_UPLOADUSERS("moodle/site:uploadusers"),
  MOODLE_SITE_VIEWFULLNAMES("moodle/site:viewfullnames"),
  MOODLE_SITE_VIEWPARTICIPANTS("moodle/site:viewparticipants"),
  MOODLE_SITE_VIEWREPORTS("moodle/site:viewreports"),
  MOODLE_SITE_VIEWUSERIDENTITY("moodle/site:viewuseridentity"),
  MOODLE_TAG_CREATE("moodle/tag:create"),
  MOODLE_TAG_EDIT("moodle/tag:edit"),
  MOODLE_TAG_EDITBLOCKS("moodle/tag:editblocks"),
  MOODLE_TAG_FLAG("moodle/tag:flag"),
  MOODLE_TAG_MANAGE("moodle/tag:manage"),
  MOODLE_USER_CHANGEOWNPASSWORD("moodle/user:changeownpassword"),
  MOODLE_USER_CREATE("moodle/user:create"),
  MOODLE_USER_DELETE("moodle/user:delete"),
  MOODLE_USER_EDITMESSAGEPROFILE("moodle/user:editmessageprofile"),
  MOODLE_USER_EDITOWNMESSAGEPROFILE("moodle/user:editownmessageprofile"),
  MOODLE_USER_EDITOWNPROFILE("moodle/user:editownprofile"),
  MOODLE_USER_EDITPROFILE("moodle/user:editprofile"),
  MOODLE_USER_IGNOREUSERQUOTA("moodle/user:ignoreuserquota"),
  MOODLE_USER_LOGINAS("moodle/user:loginas"),
  MOODLE_USER_MANAGEBLOCKS("moodle/user:manageblocks"),
  MOODLE_USER_MANAGEOWNBLOCKS("moodle/user:manageownblocks"),
  MOODLE_USER_MANAGEOWNFILES("moodle/user:manageownfiles"),
  MOODLE_USER_MANAGESYSPAGES("moodle/user:managesyspages"),
  MOODLE_USER_READUSERBLOGS("moodle/user:readuserblogs"),
  MOODLE_USER_READUSERPOSTS("moodle/user:readuserposts"),
  MOODLE_USER_UPDATE("moodle/user:update"),
  MOODLE_USER_VIEWALLDETAILS("moodle/user:viewalldetails"),
  MOODLE_USER_VIEWDETAILS("moodle/user:viewdetails"),
  MOODLE_USER_VIEWHIDDENDETAILS("moodle/user:viewhiddendetails"),
  MOODLE_USER_VIEWUSERACTIVITIESREPORT("moodle/user:viewuseractivitiesreport"),
  MOODLE_WEBSERVICE_CREATEMOBILETOKEN("moodle/webservice:createmobiletoken"),
  MOODLE_WEBSERVICE_CREATETOKEN("moodle/webservice:createtoken"),
  QUIZ_GRADING_VIEWIDNUMBER("quiz/grading:viewidnumber"),
  QUIZ_GRADING_VIEWSTUDENTNAMES("quiz/grading:viewstudentnames"),
  QUIZ_STATISTICS_VIEW("quiz/statistics:view"),
  REPORT_COMPLETION_VIEW("report/completion:view"),
  REPORT_COURSEOVERVIEW_VIEW("report/courseoverview:view"),
  REPORT_LOG_VIEW("report/log:view"),
  REPORT_LOG_VIEWTODAY("report/log:viewtoday"),
  REPORT_LOGLIVE_VIEW("report/loglive:view"),
  REPORT_OUTLINE_VIEW("report/outline:view"),
  REPORT_PARTICIPATION_VIEW("report/participation:view"),
  REPORT_PERFORMANCE_VIEW("report/performance:view"),
  REPORT_PROGRESS_VIEW("report/progress:view"),
  REPORT_QUESTIONINSTANCES_VIEW("report/questioninstances:view"),
  REPORT_SECURITY_VIEW("report/security:view"),
  REPORT_STATS_VIEW("report/stats:view"),
  REPOSITORY_ALFRESCO_VIEW("repository/alfresco:view"),
  REPOSITORY_BOXNET_VIEW("repository/boxnet:view"),
  REPOSITORY_COURSEFILES_VIEW("repository/coursefiles:view"),
  REPOSITORY_DROPBOX_VIEW("repository/dropbox:view"),
  REPOSITORY_EQUELLA_VIEW("repository/equella:view"),
  REPOSITORY_FILESYSTEM_VIEW("repository/filesystem:view"),
  REPOSITORY_FLICKR_PUBLIC_VIEW("repository/flickr_public:view"),
  REPOSITORY_FLICKR_VIEW("repository/flickr:view"),
  REPOSITORY_GOOGLEDOCS_VIEW("repository/googledocs:view"),
  REPOSITORY_LOCAL_VIEW("repository/local:view"),
  REPOSITORY_MERLOT_VIEW("repository/merlot:view"),
  REPOSITORY_PICASA_VIEW("repository/picasa:view"),
  REPOSITORY_RECENT_VIEW("repository/recent:view"),
  REPOSITORY_S3_VIEW("repository/s3:view"),
  REPOSITORY_UPLOAD_VIEW("repository/upload:view"),
  REPOSITORY_URL_VIEW("repository/url:view"),
  REPOSITORY_USER_VIEW("repository/user:view"),
  REPOSITORY_WEBDAV_VIEW("repository/webdav:view"),
  REPOSITORY_WIKIMEDIA_VIEW("repository/wikimedia:view"),
  REPOSITORY_YOUTUBE_VIEW("repository/youtube:view"),
  TOOL_CUSTOMLANG_EDIT("tool/customlang:edit"),
  TOOL_CUSTOMLANG_VIEW("tool/customlang:view"),
  WEBSERVICE_AMF_USE("webservice/amf:use"),
  WEBSERVICE_REST_USE("webservice/rest:use"),
  WEBSERVICE_SOAP_USE("webservice/soap:use"),
  WEBSERVICE_SOAPFDA_USE("webservice/soapfda:use"),
  WEBSERVICE_XMLRPC_USE("webservice/xmlrpc:use");

  String value;
  
  private Capability(String value) {
    this.value=value;
  }

  @Override
  public String toString() {
    return value;
  }
  
}
