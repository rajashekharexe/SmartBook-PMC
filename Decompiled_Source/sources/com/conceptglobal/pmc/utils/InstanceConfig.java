package com.conceptglobal.pmc.utils;

/* loaded from: classes.dex */
public class InstanceConfig {
    private static InstanceConfig instance;
    private final Instance env;
    public String baseUrl = "";
    public String root = "";
    public String firebaseTokenUrl = "";
    public String registerDeviceTokenUrl = "";
    public String rootUrlWithPort = "";
    public String hubsApi = "";
    public String neointIdentityService = "";
    public String clientId = "";
    public String clientSecret = "";
    public final String apiPath = "api/";
    public String feedApi = "";
    public boolean isPackage = false;
    public String mediaFilesPath = "fm/";
    public String mediaFilesPathWeb = "neoCampaignMedia/";
    public String wsUrl = "";

    public enum Instance {
        QA,
        PIUAT,
        DEMO,
        LIVE,
        PMCKSCLQA,
        PMCKSCLUAT,
        PMCKSCLLIVE,
        PMCDUAT,
        pmcdlive
    }

    private InstanceConfig(Instance instance2) {
        this.env = instance2;
        init();
    }

    public static InstanceConfig getInstance(Instance instance2) {
        if (instance == null) {
            instance = new InstanceConfig(instance2);
        }
        return instance;
    }

    /* renamed from: com.conceptglobal.pmc.utils.InstanceConfig$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$conceptglobal$pmc$utils$InstanceConfig$Instance;

        static {
            int[] iArr = new int[Instance.values().length];
            $SwitchMap$com$conceptglobal$pmc$utils$InstanceConfig$Instance = iArr;
            try {
                iArr[Instance.QA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$conceptglobal$pmc$utils$InstanceConfig$Instance[Instance.DEMO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$conceptglobal$pmc$utils$InstanceConfig$Instance[Instance.PIUAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$conceptglobal$pmc$utils$InstanceConfig$Instance[Instance.PMCDUAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$conceptglobal$pmc$utils$InstanceConfig$Instance[Instance.pmcdlive.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$conceptglobal$pmc$utils$InstanceConfig$Instance[Instance.LIVE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$conceptglobal$pmc$utils$InstanceConfig$Instance[Instance.PMCKSCLQA.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$conceptglobal$pmc$utils$InstanceConfig$Instance[Instance.PMCKSCLUAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$conceptglobal$pmc$utils$InstanceConfig$Instance[Instance.PMCKSCLLIVE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    private void init() {
        switch (AnonymousClass1.$SwitchMap$com$conceptglobal$pmc$utils$InstanceConfig$Instance[this.env.ordinal()]) {
            case 1:
                this.baseUrl = "https://neocampaign.neoint.ai/";
                this.root = "https://neocampaign.neoint.ai:3000/QANeoCampaignApi/";
                this.firebaseTokenUrl = this.root + "api/notification/registerDevice";
                this.rootUrlWithPort = "https://neocampaign.neoint.ai:3000/";
                this.hubsApi = "HubsApi/";
                this.feedApi = "QAFeedsApi/";
                this.neointIdentityService = "NeointIdentityService";
                this.clientId = "neointCampaignQA";
                this.clientSecret = "neointCampaignQA";
                this.registerDeviceTokenUrl = this.rootUrlWithPort + "QAFeedsApi/api/fcm/saveDeviceToken";
                this.wsUrl = "wss://neocampaign.neoint.ai:3000/ws/";
                break;
            case 2:
                this.baseUrl = "https://icloud.neoint.ai/";
                this.root = "https://icloud.neoint.ai:3002/NeoCampaignAPI/";
                this.rootUrlWithPort = "https://icloud.neoint.ai:3002/";
                this.hubsApi = "OrdersApi/";
                this.feedApi = "DemoFeeds/";
                this.neointIdentityService = "NeointIdentityService";
                this.firebaseTokenUrl = this.root + "api/notification/registerDevice";
                this.clientId = "orders";
                this.clientSecret = "orders";
                break;
            case 3:
                this.baseUrl = "https://piuat.neoint.ai/";
                this.root = "https://piuat.neoint.ai:3002/NeoIntCampaign/";
                this.rootUrlWithPort = "https://piuat.neoint.ai:3002/";
                this.hubsApi = "UATApi/";
                this.feedApi = "UATfeedsApi/";
                this.neointIdentityService = "NeointIdentityService";
                this.firebaseTokenUrl = this.root + "api/notification/registerDevice";
                this.clientId = "NeointMobile";
                this.clientSecret = "NeointMobile";
                break;
            case 4:
                this.baseUrl = "https://mal.neoint.ai/";
                this.root = "https://mal.neoint.ai:3000/DFNeoCampaignUATApi/";
                this.rootUrlWithPort = "https://mal.neoint.ai:3000/";
                this.firebaseTokenUrl = this.root + "api/notification/registerDevice";
                this.hubsApi = "UATHubsApi/";
                this.feedApi = "QAfeedsApi/";
                this.neointIdentityService = "NeointIdentityService";
                this.clientId = "ncUAT";
                this.clientSecret = "ncUAT";
                this.wsUrl = "wss://mal.neoint.ai:3000/wsuat/";
                break;
            case 5:
                this.baseUrl = "https://mal.neoint.ai/";
                this.root = "https://mal.neoint.ai:3000/DFNeoCampaignLiveApi/";
                this.rootUrlWithPort = "https://mal.neoint.ai:3000/";
                this.firebaseTokenUrl = "$root${apiPath}notification/registerDevice";
                this.hubsApi = "LiveHubsApi/";
                this.feedApi = "QAfeedsApi/";
                this.neointIdentityService = "NeointIdentityService";
                this.clientId = "ncLive";
                this.clientSecret = "ncLive";
                this.wsUrl = "wss://mal.neoint.ai:3000/ws/";
                break;
            case 6:
                this.baseUrl = "https://neocampaign.neoint.ai/";
                this.root = "https://neocampaign.neoint.ai:3000/NeoCampaignApi/";
                this.rootUrlWithPort = "https://neocampaign.neoint.ai:3000/";
                this.hubsApi = "HubsApi/";
                this.neointIdentityService = "NeointIdentityService";
                this.clientId = "neointCampaignQA";
                this.clientSecret = "neointCampaignQA";
                this.feedApi = "FeedsApi/";
                this.firebaseTokenUrl = this.root + "api/notification/registerDevice";
                this.registerDeviceTokenUrl = this.rootUrlWithPort + "FeedsApi/api/fcm/saveDeviceToken";
                break;
            case 7:
                this.baseUrl = "https://neocampaign.neoint.ai/";
                this.root = "https://neocampaign.neoint.ai:3000/QANeoCampaignApi/";
                this.rootUrlWithPort = "https://neocampaign.neoint.ai:3000/";
                this.hubsApi = "HubsApi/";
                this.neointIdentityService = "NeointIdentityService";
                this.clientId = "neointCampaignQA";
                this.clientSecret = "neointCampaignQA";
                this.feedApi = "FeedsApi/";
                this.firebaseTokenUrl = this.root + "api/notification/registerDevice";
                this.registerDeviceTokenUrl = this.rootUrlWithPort + "FeedsApi/api/fcm/saveDeviceToken";
                break;
            case 8:
                this.baseUrl = "https://champions.kscl.in/";
                this.root = "https://champions.kscl.in:8080/UATNeoCampaignApi/";
                this.rootUrlWithPort = "https://champions.kscl.in:8080/";
                this.hubsApi = "HubsApi/";
                this.neointIdentityService = "NeointIdentityService";
                this.clientId = "neointCampaignQA";
                this.clientSecret = "neointCampaignQA";
                this.feedApi = "FeedsApi/";
                this.firebaseTokenUrl = this.root + "api/notification/registerDevice";
                this.registerDeviceTokenUrl = this.rootUrlWithPort + "FeedsApi/api/fcm/saveDeviceToken";
                break;
            case 9:
                this.baseUrl = "https://champions.kscl.in/";
                this.root = "https://champions.kscl.in:3000/NeoCampaignApi/";
                this.rootUrlWithPort = "https://champions.kscl.in:3000/";
                this.hubsApi = "LiveHubsApi/";
                this.neointIdentityService = "NeointIdentityService";
                this.clientId = "neointCampaignLive";
                this.clientSecret = "neointCampaignLive";
                this.feedApi = "FeedsApi/";
                this.firebaseTokenUrl = this.root + "api/notification/registerDevice";
                this.registerDeviceTokenUrl = this.rootUrlWithPort + "FeedsApi/api/fcm/saveDeviceToken";
                break;
        }
    }
}
