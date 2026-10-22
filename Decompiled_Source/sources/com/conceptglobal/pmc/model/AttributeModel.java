package com.conceptglobal.pmc.model;

/* loaded from: classes.dex */
public class AttributeModel {
    private int DisplayRows;
    private String DisplayType;
    private String DynamicColumn;
    private String DynamicCondition;
    private String SourceQuery;
    private int activityAttributeId;
    private String attributeDefaultValue;
    private String attributeDisplayField;
    private int attributeId;
    private String attributeLookupKey;
    private String attributeName;
    private String attributeSource;
    private String attributeValue;
    private String attributeValueField;
    private String childLevelId;
    private String controlType;
    private int detailsId;
    private String displayNameMobile;
    private int filterAttribute1;
    private int filterAttribute2;
    private int filterAttribute3;
    private int isKeyAttribute;
    private int isMandatory;
    private int isReadOnly;
    private int maxLength;
    private long maxValue;
    private int minLength;
    private long minValue;
    private String sequenceId;
    private String tableName;
    private String validationExpression;
    private String validationType;

    public int getDisplayRows() {
        return this.DisplayRows;
    }

    public void setDisplayRows(int i) {
        this.DisplayRows = i;
    }

    public String getSourceQuery() {
        return this.SourceQuery;
    }

    public void setSourceQuery(String str) {
        this.SourceQuery = str;
    }

    public int getIsReadOnly() {
        return this.isReadOnly;
    }

    public void setIsReadOnly(int i) {
        this.isReadOnly = i;
    }

    public String getDynamicColumn() {
        return this.DynamicColumn;
    }

    public void setDynamicColumn(String str) {
        this.DynamicColumn = str;
    }

    public String getDynamicCondition() {
        return this.DynamicCondition;
    }

    public void setDynamicCondition(String str) {
        this.DynamicCondition = str;
    }

    public String getDisplayType() {
        return this.DisplayType;
    }

    public void setDisplayType(String str) {
        this.DisplayType = str;
    }

    public AttributeModel() {
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof AttributeModel)) {
            return false;
        }
        AttributeModel attributeModel = (AttributeModel) obj;
        int i = this.attributeId;
        return i != 0 && i == attributeModel.attributeId;
    }

    public String toString() {
        return super.toString();
    }

    public AttributeModel(AttributeModel attributeModel) {
        this.attributeId = attributeModel.attributeId;
        this.attributeName = attributeModel.attributeName;
        this.attributeValue = attributeModel.attributeValue;
        this.controlType = attributeModel.controlType;
        this.tableName = attributeModel.tableName;
        this.detailsId = attributeModel.detailsId;
        this.isMandatory = attributeModel.isMandatory;
        this.minValue = attributeModel.minValue;
    }

    public int getAttributeId() {
        return this.attributeId;
    }

    public void setAttributeId(int i) {
        this.attributeId = i;
    }

    public String getAttributeName() {
        return this.attributeName;
    }

    public void setAttributeName(String str) {
        this.attributeName = str;
    }

    public String getAttributeValue() {
        return this.attributeValue;
    }

    public void setAttributeValue(String str) {
        this.attributeValue = str;
    }

    public String getControlType() {
        return this.controlType;
    }

    public void setControlType(String str) {
        this.controlType = str;
    }

    public String getTableName() {
        return this.tableName;
    }

    public void setTableName(String str) {
        this.tableName = str;
    }

    public int getDetailsId() {
        return this.detailsId;
    }

    public void setDetailsId(int i) {
        this.detailsId = i;
    }

    public int getIsMandatory() {
        return this.isMandatory;
    }

    public void setIsMandatory(int i) {
        this.isMandatory = i;
    }

    public String getSequenceId() {
        return this.sequenceId;
    }

    public void setSequenceId(String str) {
        this.sequenceId = str;
    }

    public String getChildLevelId() {
        return this.childLevelId;
    }

    public void setChildLevelId(String str) {
        this.childLevelId = str;
    }

    public int getActivityAttributeId() {
        return this.activityAttributeId;
    }

    public void setActivityAttributeId(int i) {
        this.activityAttributeId = i;
    }

    public int getMaxLength() {
        return this.maxLength;
    }

    public void setMaxLength(int i) {
        this.maxLength = i;
    }

    public int getMinLength() {
        return this.minLength;
    }

    public void setMinLength(int i) {
        this.minLength = i;
    }

    public long getMinValue() {
        return this.minValue;
    }

    public void setMinValue(long j) {
        this.minValue = j;
    }

    public long getMaxValue() {
        return this.maxValue;
    }

    public void setMaxValue(long j) {
        this.maxValue = j;
    }

    public String getValidationType() {
        return this.validationType;
    }

    public void setValidationType(String str) {
        this.validationType = str;
    }

    public String getValidationExpression() {
        return this.validationExpression;
    }

    public void setValidationExpression(String str) {
        this.validationExpression = str;
    }

    public String getDisplayNameMobile() {
        return this.displayNameMobile;
    }

    public void setDisplayNameMobile(String str) {
        this.displayNameMobile = str;
    }

    public String getAttributeSource() {
        return this.attributeSource;
    }

    public void setAttributeSource(String str) {
        this.attributeSource = str;
    }

    public String getAttributeDisplayField() {
        return this.attributeDisplayField;
    }

    public void setAttributeDisplayField(String str) {
        this.attributeDisplayField = str;
    }

    public String getAttributeValueField() {
        return this.attributeValueField;
    }

    public void setAttributeValueField(String str) {
        this.attributeValueField = str;
    }

    public String getAttributeLookupKey() {
        return this.attributeLookupKey;
    }

    public void setAttributeLookupKey(String str) {
        this.attributeLookupKey = str;
    }

    public String getAttributeDefaultValue() {
        return this.attributeDefaultValue;
    }

    public void setAttributeDefaultValue(String str) {
        this.attributeDefaultValue = str;
    }

    public int getIsKeyAttribute() {
        return this.isKeyAttribute;
    }

    public void setIsKeyAttribute(int i) {
        this.isKeyAttribute = i;
    }

    public int getFilterAttribute1() {
        return this.filterAttribute1;
    }

    public void setFilterAttribute1(int i) {
        this.filterAttribute1 = i;
    }

    public int getFilterAttribute2() {
        return this.filterAttribute2;
    }

    public void setFilterAttribute2(int i) {
        this.filterAttribute2 = i;
    }

    public int getFilterAttribute3() {
        return this.filterAttribute3;
    }

    public void setFilterAttribute3(int i) {
        this.filterAttribute3 = i;
    }
}
