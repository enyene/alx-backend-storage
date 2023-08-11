{"payload":{"allShortcutsEnabled":false,"fileTree":{"0x00-MySQL_Advanced":{"items":[{"name":"0-uniq_users.sql","path":"0x00-MySQL_Advanced/0-uniq_users.sql","contentType":"file"},{"name":"1-country_users.sql","path":"0x00-MySQL_Advanced/1-country_users.sql","contentType":"file"},{"name":"10-div.sql","path":"0x00-MySQL_Advanced/10-div.sql","contentType":"file"},{"name":"100-average_weighted_score.sql","path":"0x00-MySQL_Advanced/100-average_weighted_score.sql","contentType":"file"},{"name":"101-average_weighted_score.sql","path":"0x00-MySQL_Advanced/101-average_weighted_score.sql","contentType":"file"},{"name":"11-need_meeting.sql","path":"0x00-MySQL_Advanced/11-need_meeting.sql","contentType":"file"},{"name":"2-fans.sql","path":"0x00-MySQL_Advanced/2-fans.sql","contentType":"file"},{"name":"3-glam_rock.sql","path":"0x00-MySQL_Advanced/3-glam_rock.sql","contentType":"file"},{"name":"4-store.sql","path":"0x00-MySQL_Advanced/4-store.sql","contentType":"file"},{"name":"5-valid_email.sql","path":"0x00-MySQL_Advanced/5-valid_email.sql","contentType":"file"},{"name":"6-bonus.sql","path":"0x00-MySQL_Advanced/6-bonus.sql","contentType":"file"},{"name":"7-average_score.sql","path":"0x00-MySQL_Advanced/7-average_score.sql","contentType":"file"},{"name":"8-index_my_names.sql","path":"0x00-MySQL_Advanced/8-index_my_names.sql","contentType":"file"},{"name":"9-index_name_score.sql","path":"0x00-MySQL_Advanced/9-index_name_score.sql","contentType":"file"},{"name":"README.md","path":"0x00-MySQL_Advanced/README.md","contentType":"file"},{"name":"metal_bands.sql","path":"0x00-MySQL_Advanced/metal_bands.sql","contentType":"file"}],"totalCount":16},"":{"items":[{"name":"0x00-MySQL_Advanced","path":"0x00-MySQL_Advanced","contentType":"directory"},{"name":"0x01-NoSQL","path":"0x01-NoSQL","contentType":"directory"},{"name":"0x02-redis_basic","path":"0x02-redis_basic","contentType":"directory"},{"name":"README.md","path":"README.md","contentType":"file"}],"totalCount":4}},"fileTreeProcessingTime":4.838102,"foldersToFetch":[],"reducedMotionEnabled":null,"repo":{"id":666203309,"defaultBranch":"master","name":"alx-backend-storage","ownerLogin":"Lordwill1","currentUserCanPush":false,"isFork":false,"isEmpty":false,"createdAt":"2023-07-14T00:50:13.000Z","ownerAvatar":"https://avatars.githubusercontent.com/u/105258746?v=4","public":true,"private":false,"isOrgOwned":false},"refInfo":{"name":"master","listCacheKey":"v0:1689296322.0","canEdit":false,"refType":"branch","currentOid":"5035841d46e6fd44a6261dbff6bb0e6f8a379a05"},"path":"0x00-MySQL_Advanced/101-average_weighted_score.sql","currentUser":null,"blob":{"rawLines":["-- Creates a stored procedure ComputeAverageWeightedScoreForUsers that","-- computes and store the average weighted score for all students.","DROP PROCEDURE IF EXISTS ComputeAverageWeightedScoreForUsers;","DELIMITER $$","CREATE PROCEDURE ComputeAverageWeightedScoreForUsers ()","BEGIN","    ALTER TABLE users ADD total_weighted_score INT NOT NULL;","    ALTER TABLE users ADD total_weight INT NOT NULL;","","    UPDATE users","        SET total_weighted_score = (","            SELECT SUM(corrections.score * projects.weight)","            FROM corrections","                INNER JOIN projects","                    ON corrections.project_id = projects.id","            WHERE corrections.user_id = users.id","            );","","    UPDATE users","        SET total_weight = (","            SELECT SUM(projects.weight)","                FROM corrections","                    INNER JOIN projects","                        ON corrections.project_id = projects.id","                WHERE corrections.user_id = users.id","            );","","    UPDATE users","        SET users.average_score = IF(users.total_weight = 0, 0, users.total_weighted_score / users.total_weight);","    ALTER TABLE users","        DROP COLUMN total_weighted_score;","    ALTER TABLE users","        DROP COLUMN total_weight;","END $$","DELIMITER ;"],"stylingDirectives":[[{"start":0,"end":70,"cssClass":"pl-c"},{"start":0,"end":2,"cssClass":"pl-c"}],[{"start":0,"end":66,"cssClass":"pl-c"},{"start":0,"end":2,"cssClass":"pl-c"}],[],[],[],[{"start":0,"end":5,"cssClass":"pl-k"}],[{"start":4,"end":9,"cssClass":"pl-k"},{"start":10,"end":15,"cssClass":"pl-k"},{"start":47,"end":50,"cssClass":"pl-k"},{"start":51,"end":59,"cssClass":"pl-k"}],[{"start":4,"end":9,"cssClass":"pl-k"},{"start":10,"end":15,"cssClass":"pl-k"},{"start":39,"end":42,"cssClass":"pl-k"},{"start":43,"end":51,"cssClass":"pl-k"}],[],[{"start":4,"end":10,"cssClass":"pl-k"}],[{"start":8,"end":11,"cssClass":"pl-k"},{"start":33,"end":34,"cssClass":"pl-k"}],[{"start":12,"end":18,"cssClass":"pl-k"},{"start":19,"end":22,"cssClass":"pl-c1"},{"start":23,"end":34,"cssClass":"pl-c1"},{"start":35,"end":40,"cssClass":"pl-c1"},{"start":41,"end":42,"cssClass":"pl-k"},{"start":43,"end":51,"cssClass":"pl-c1"},{"start":52,"end":58,"cssClass":"pl-c1"}],[{"start":12,"end":16,"cssClass":"pl-k"}],[{"start":16,"end":26,"cssClass":"pl-k"}],[{"start":20,"end":22,"cssClass":"pl-k"},{"start":23,"end":34,"cssClass":"pl-c1"},{"start":35,"end":45,"cssClass":"pl-c1"},{"start":46,"end":47,"cssClass":"pl-k"},{"start":48,"end":56,"cssClass":"pl-c1"},{"start":57,"end":59,"cssClass":"pl-c1"}],[{"start":12,"end":17,"cssClass":"pl-k"},{"start":18,"end":29,"cssClass":"pl-c1"},{"start":30,"end":37,"cssClass":"pl-c1"},{"start":38,"end":39,"cssClass":"pl-k"},{"start":40,"end":45,"cssClass":"pl-c1"},{"start":46,"end":48,"cssClass":"pl-c1"}],[],[],[{"start":4,"end":10,"cssClass":"pl-k"}],[{"start":8,"end":11,"cssClass":"pl-k"},{"start":25,"end":26,"cssClass":"pl-k"}],[{"start":12,"end":18,"cssClass":"pl-k"},{"start":19,"end":22,"cssClass":"pl-c1"},{"start":23,"end":31,"cssClass":"pl-c1"},{"start":32,"end":38,"cssClass":"pl-c1"}],[{"start":16,"end":20,"cssClass":"pl-k"}],[{"start":20,"end":30,"cssClass":"pl-k"}],[{"start":24,"end":26,"cssClass":"pl-k"},{"start":27,"end":38,"cssClass":"pl-c1"},{"start":39,"end":49,"cssClass":"pl-c1"},{"start":50,"end":51,"cssClass":"pl-k"},{"start":52,"end":60,"cssClass":"pl-c1"},{"start":61,"end":63,"cssClass":"pl-c1"}],[{"start":16,"end":21,"cssClass":"pl-k"},{"start":22,"end":33,"cssClass":"pl-c1"},{"start":34,"end":41,"cssClass":"pl-c1"},{"start":42,"end":43,"cssClass":"pl-k"},{"start":44,"end":49,"cssClass":"pl-c1"},{"start":50,"end":52,"cssClass":"pl-c1"}],[],[],[{"start":4,"end":10,"cssClass":"pl-k"}],[{"start":8,"end":11,"cssClass":"pl-k"},{"start":12,"end":17,"cssClass":"pl-c1"},{"start":18,"end":31,"cssClass":"pl-c1"},{"start":32,"end":33,"cssClass":"pl-k"},{"start":37,"end":42,"cssClass":"pl-c1"},{"start":43,"end":55,"cssClass":"pl-c1"},{"start":56,"end":57,"cssClass":"pl-k"},{"start":58,"end":59,"cssClass":"pl-c1"},{"start":61,"end":62,"cssClass":"pl-c1"},{"start":64,"end":69,"cssClass":"pl-c1"},{"start":70,"end":90,"cssClass":"pl-c1"},{"start":91,"end":92,"cssClass":"pl-k"},{"start":93,"end":98,"cssClass":"pl-c1"},{"start":99,"end":111,"cssClass":"pl-c1"}],[{"start":4,"end":9,"cssClass":"pl-k"},{"start":10,"end":15,"cssClass":"pl-k"}],[],[{"start":4,"end":9,"cssClass":"pl-k"},{"start":10,"end":15,"cssClass":"pl-k"}],[],[],[]],"csv":null,"csvError":null,"dependabotInfo":{"showConfigurationBanner":false,"configFilePath":null,"networkDependabotPath":"/Lordwill1/alx-backend-storage/network/updates","dismissConfigurationNoticePath":"/settings/dismiss-notice/dependabot_configuration_notice","configurationNoticeDismissed":null,"repoAlertsPath":"/Lordwill1/alx-backend-storage/security/dependabot","repoSecurityAndAnalysisPath":"/Lordwill1/alx-backend-storage/settings/security_analysis","repoOwnerIsOrg":false,"currentUserCanAdminRepo":false},"displayName":"101-average_weighted_score.sql","displayUrl":"https://github.com/Lordwill1/alx-backend-storage/blob/master/0x00-MySQL_Advanced/101-average_weighted_score.sql?raw=true","headerInfo":{"blobSize":"1.23 KB","deleteInfo":{"deleteTooltip":"You must be signed in to make or propose changes"},"editInfo":{"editTooltip":"You must be signed in to make or propose changes"},"ghDesktopPath":"https://desktop.github.com","gitLfsPath":null,"onBranch":true,"shortPath":"d90f0b8","siteNavLoginPath":"/login?return_to=https%3A%2F%2Fgithub.com%2FLordwill1%2Falx-backend-storage%2Fblob%2Fmaster%2F0x00-MySQL_Advanced%2F101-average_weighted_score.sql","isCSV":false,"isRichtext":false,"toc":null,"lineInfo":{"truncatedLoc":"35","truncatedSloc":"32"},"mode":"file"},"image":false,"isCodeownersFile":null,"isValidLegacyIssueTemplate":false,"issueTemplateHelpUrl":"https://docs.github.com/articles/about-issue-and-pull-request-templates","issueTemplate":null,"discussionTemplate":null,"language":"SQL","languageID":333,"large":false,"loggedIn":false,"newDiscussionPath":"/Lordwill1/alx-backend-storage/discussions/new","newIssuePath":"/Lordwill1/alx-backend-storage/issues/new","planSupportInfo":{"repoIsFork":null,"repoOwnedByCurrentUser":null,"requestFullPath":"/Lordwill1/alx-backend-storage/blob/master/0x00-MySQL_Advanced/101-average_weighted_score.sql","showFreeOrgGatedFeatureMessage":null,"showPlanSupportBanner":null,"upgradeDataAttributes":null,"upgradePath":null},"publishBannersInfo":{"dismissActionNoticePath":"/settings/dismiss-notice/publish_action_from_dockerfile","dismissStackNoticePath":"/settings/dismiss-notice/publish_stack_from_file","releasePath":"/Lordwill1/alx-backend-storage/releases/new?marketplace=true","showPublishActionBanner":false,"showPublishStackBanner":false},"renderImageOrRaw":false,"richText":null,"renderedFileInfo":null,"tabSize":8,"topBannersInfo":{"overridingGlobalFundingFile":false,"globalPreferredFundingPath":null,"repoOwner":"Lordwill1","repoName":"alx-backend-storage","showInvalidCitationWarning":false,"citationHelpUrl":"https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-on-github/about-citation-files","showDependabotConfigurationBanner":false,"actionsOnboardingTip":null},"truncated":false,"viewable":true,"workflowRedirectUrl":null,"symbols":{"timedOut":false,"notAnalyzed":true,"symbols":[]}},"copilotInfo":null,"csrf_tokens":{"/Lordwill1/alx-backend-storage/branches":{"post":"p3U36F9d0BrVDUCGeDX6n5rwfF0Sy3yiayIuRYncIlG15rW3r6AG0N3WrBPvXw1Hq4oWnxNJiL10Nlk5g0r5OQ"}}},"title":"alx-backend-storage/0x00-MySQL_Advanced/101-average_weighted_score.sql at master · Lordwill1/alx-backend-storage"}