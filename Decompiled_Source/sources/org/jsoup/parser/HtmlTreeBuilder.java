package org.jsoup.parser;

import com.coremedia.iso.boxes.MetaBox;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.FormElement;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.Token;
import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public class HtmlTreeBuilder extends TreeBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Element contextElement;
    private FormElement formElement;
    private Element headElement;
    private HtmlTreeBuilderState originalState;
    private HtmlTreeBuilderState state;
    public static final String[] TagsSearchInScope = {"applet", "caption", "html", "table", "td", "th", "marquee", "object"};
    private static final String[] TagSearchList = {"ol", "ul"};
    private static final String[] TagSearchButton = {"button"};
    private static final String[] TagSearchTableScope = {"html", "table"};
    private static final String[] TagSearchSelectScope = {"optgroup", "option"};
    private static final String[] TagSearchEndTags = {"dd", "dt", "li", "option", "optgroup", "p", "rp", "rt"};
    private static final String[] TagSearchSpecial = {"address", "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "command", "dd", "details", "dir", "div", "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", "frame", "frameset", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", "menu", MetaBox.TYPE, "nav", "noembed", "noframes", "noscript", "object", "ol", "p", "param", "plaintext", "pre", "script", "section", "select", "style", "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", SettingsJsonConstants.PROMPT_TITLE_KEY, "tr", "ul", "wbr", "xmp"};
    private boolean baseUriSetFromDoc = false;
    private ArrayList<Element> formattingElements = new ArrayList<>();
    private List<String> pendingTableCharacters = new ArrayList();
    private Token.EndTag emptyEnd = new Token.EndTag();
    private boolean framesetOk = true;
    private boolean fosterInserts = false;
    private boolean fragmentParsing = false;
    private String[] specificScopeTarget = {null};

    @Override // org.jsoup.parser.TreeBuilder
    public /* bridge */ /* synthetic */ boolean processStartTag(String str, Attributes attributes) {
        return super.processStartTag(str, attributes);
    }

    HtmlTreeBuilder() {
    }

    @Override // org.jsoup.parser.TreeBuilder
    ParseSettings defaultSettings() {
        return ParseSettings.htmlDefault;
    }

    @Override // org.jsoup.parser.TreeBuilder
    Document parse(String str, String str2, ParseErrorList parseErrorList, ParseSettings parseSettings) {
        this.state = HtmlTreeBuilderState.Initial;
        this.baseUriSetFromDoc = false;
        return super.parse(str, str2, parseErrorList, parseSettings);
    }

    List<Node> parseFragment(String str, Element element, String str2, ParseErrorList parseErrorList, ParseSettings parseSettings) {
        Element element2;
        this.state = HtmlTreeBuilderState.Initial;
        initialiseParse(str, str2, parseErrorList, parseSettings);
        this.contextElement = element;
        this.fragmentParsing = true;
        if (element != null) {
            if (element.ownerDocument() != null) {
                this.doc.quirksMode(element.ownerDocument().quirksMode());
            }
            String tagName = element.tagName();
            if (StringUtil.in(tagName, SettingsJsonConstants.PROMPT_TITLE_KEY, "textarea")) {
                this.tokeniser.transition(TokeniserState.Rcdata);
            } else if (StringUtil.in(tagName, "iframe", "noembed", "noframes", "style", "xmp")) {
                this.tokeniser.transition(TokeniserState.Rawtext);
            } else if (tagName.equals("script")) {
                this.tokeniser.transition(TokeniserState.ScriptData);
            } else if (tagName.equals("noscript")) {
                this.tokeniser.transition(TokeniserState.Data);
            } else if (tagName.equals("plaintext")) {
                this.tokeniser.transition(TokeniserState.Data);
            } else {
                this.tokeniser.transition(TokeniserState.Data);
            }
            element2 = new Element(Tag.valueOf("html", parseSettings), str2);
            this.doc.appendChild(element2);
            this.stack.add(element2);
            resetInsertionMode();
            Elements parents = element.parents();
            parents.add(0, element);
            Iterator<Element> it = parents.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Element next = it.next();
                if (next instanceof FormElement) {
                    this.formElement = (FormElement) next;
                    break;
                }
            }
        } else {
            element2 = null;
        }
        runParser();
        if (element != null && element2 != null) {
            return element2.childNodes();
        }
        return this.doc.childNodes();
    }

    @Override // org.jsoup.parser.TreeBuilder
    protected boolean process(Token token) {
        this.currentToken = token;
        return this.state.process(token, this);
    }

    boolean process(Token token, HtmlTreeBuilderState htmlTreeBuilderState) {
        this.currentToken = token;
        return htmlTreeBuilderState.process(token, this);
    }

    void transition(HtmlTreeBuilderState htmlTreeBuilderState) {
        this.state = htmlTreeBuilderState;
    }

    HtmlTreeBuilderState state() {
        return this.state;
    }

    void markInsertionMode() {
        this.originalState = this.state;
    }

    HtmlTreeBuilderState originalState() {
        return this.originalState;
    }

    void framesetOk(boolean z) {
        this.framesetOk = z;
    }

    boolean framesetOk() {
        return this.framesetOk;
    }

    Document getDocument() {
        return this.doc;
    }

    String getBaseUri() {
        return this.baseUri;
    }

    void maybeSetBaseUri(Element element) {
        if (this.baseUriSetFromDoc) {
            return;
        }
        String absUrl = element.absUrl("href");
        if (absUrl.length() != 0) {
            this.baseUri = absUrl;
            this.baseUriSetFromDoc = true;
            this.doc.setBaseUri(absUrl);
        }
    }

    boolean isFragmentParsing() {
        return this.fragmentParsing;
    }

    void error(HtmlTreeBuilderState htmlTreeBuilderState) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Unexpected token [%s] when in state [%s]", this.currentToken.tokenType(), htmlTreeBuilderState));
        }
    }

    Element insert(Token.StartTag startTag) {
        if (startTag.isSelfClosing()) {
            Element insertEmpty = insertEmpty(startTag);
            this.stack.add(insertEmpty);
            this.tokeniser.transition(TokeniserState.Data);
            this.tokeniser.emit(this.emptyEnd.reset().name(insertEmpty.tagName()));
            return insertEmpty;
        }
        Element element = new Element(Tag.valueOf(startTag.name(), this.settings), this.baseUri, this.settings.normalizeAttributes(startTag.attributes));
        insert(element);
        return element;
    }

    Element insertStartTag(String str) {
        Element element = new Element(Tag.valueOf(str, this.settings), this.baseUri);
        insert(element);
        return element;
    }

    void insert(Element element) {
        insertNode(element);
        this.stack.add(element);
    }

    Element insertEmpty(Token.StartTag startTag) {
        Tag valueOf = Tag.valueOf(startTag.name(), this.settings);
        Element element = new Element(valueOf, this.baseUri, startTag.attributes);
        insertNode(element);
        if (startTag.isSelfClosing()) {
            if (valueOf.isKnownTag()) {
                if (valueOf.isSelfClosing()) {
                    this.tokeniser.acknowledgeSelfClosingFlag();
                }
            } else {
                valueOf.setSelfClosing();
                this.tokeniser.acknowledgeSelfClosingFlag();
            }
        }
        return element;
    }

    FormElement insertForm(Token.StartTag startTag, boolean z) {
        FormElement formElement = new FormElement(Tag.valueOf(startTag.name(), this.settings), this.baseUri, startTag.attributes);
        setFormElement(formElement);
        insertNode(formElement);
        if (z) {
            this.stack.add(formElement);
        }
        return formElement;
    }

    void insert(Token.Comment comment) {
        insertNode(new Comment(comment.getData(), this.baseUri));
    }

    void insert(Token.Character character) {
        Node dataNode;
        String tagName = currentElement().tagName();
        if (tagName.equals("script") || tagName.equals("style")) {
            dataNode = new DataNode(character.getData(), this.baseUri);
        } else {
            dataNode = new TextNode(character.getData(), this.baseUri);
        }
        currentElement().appendChild(dataNode);
    }

    private void insertNode(Node node) {
        FormElement formElement;
        if (this.stack.size() == 0) {
            this.doc.appendChild(node);
        } else if (isFosterInserts()) {
            insertInFosterParent(node);
        } else {
            currentElement().appendChild(node);
        }
        if (node instanceof Element) {
            Element element = (Element) node;
            if (!element.tag().isFormListed() || (formElement = this.formElement) == null) {
                return;
            }
            formElement.addElement(element);
        }
    }

    Element pop() {
        return this.stack.remove(this.stack.size() - 1);
    }

    void push(Element element) {
        this.stack.add(element);
    }

    ArrayList<Element> getStack() {
        return this.stack;
    }

    boolean onStack(Element element) {
        return isElementInQueue(this.stack, element);
    }

    private boolean isElementInQueue(ArrayList<Element> arrayList, Element element) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == element) {
                return true;
            }
        }
        return false;
    }

    Element getFromStack(String str) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            if (element.nodeName().equals(str)) {
                return element;
            }
        }
        return null;
    }

    boolean removeFromStack(Element element) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            if (this.stack.get(size) == element) {
                this.stack.remove(size);
                return true;
            }
        }
        return false;
    }

    void popStackToClose(String str) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            this.stack.remove(size);
            if (element.nodeName().equals(str)) {
                return;
            }
        }
    }

    void popStackToClose(String... strArr) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            this.stack.remove(size);
            if (StringUtil.in(element.nodeName(), strArr)) {
                return;
            }
        }
    }

    void popStackToBefore(String str) {
        for (int size = this.stack.size() - 1; size >= 0 && !this.stack.get(size).nodeName().equals(str); size--) {
            this.stack.remove(size);
        }
    }

    void clearStackToTableContext() {
        clearStackToContext("table");
    }

    void clearStackToTableBodyContext() {
        clearStackToContext("tbody", "tfoot", "thead");
    }

    void clearStackToTableRowContext() {
        clearStackToContext("tr");
    }

    private void clearStackToContext(String... strArr) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            if (StringUtil.in(element.nodeName(), strArr) || element.nodeName().equals("html")) {
                return;
            }
            this.stack.remove(size);
        }
    }

    Element aboveOnStack(Element element) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            if (this.stack.get(size) == element) {
                return this.stack.get(size - 1);
            }
        }
        return null;
    }

    void insertOnStackAfter(Element element, Element element2) {
        int lastIndexOf = this.stack.lastIndexOf(element);
        Validate.isTrue(lastIndexOf != -1);
        this.stack.add(lastIndexOf + 1, element2);
    }

    void replaceOnStack(Element element, Element element2) {
        replaceInQueue(this.stack, element, element2);
    }

    private void replaceInQueue(ArrayList<Element> arrayList, Element element, Element element2) {
        int lastIndexOf = arrayList.lastIndexOf(element);
        Validate.isTrue(lastIndexOf != -1);
        arrayList.set(lastIndexOf, element2);
    }

    void resetInsertionMode() {
        boolean z = false;
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = this.stack.get(size);
            if (size == 0) {
                element = this.contextElement;
                z = true;
            }
            String nodeName = element.nodeName();
            if ("select".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InSelect);
                return;
            }
            if ("td".equals(nodeName) || ("th".equals(nodeName) && !z)) {
                transition(HtmlTreeBuilderState.InCell);
                return;
            }
            if ("tr".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InRow);
                return;
            }
            if ("tbody".equals(nodeName) || "thead".equals(nodeName) || "tfoot".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InTableBody);
                return;
            }
            if ("caption".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InCaption);
                return;
            }
            if ("colgroup".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InColumnGroup);
                return;
            }
            if ("table".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InTable);
                return;
            }
            if ("head".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InBody);
                return;
            }
            if ("body".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InBody);
                return;
            }
            if ("frameset".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InFrameset);
                return;
            } else if ("html".equals(nodeName)) {
                transition(HtmlTreeBuilderState.BeforeHead);
                return;
            } else {
                if (z) {
                    transition(HtmlTreeBuilderState.InBody);
                    return;
                }
            }
        }
    }

    private boolean inSpecificScope(String str, String[] strArr, String[] strArr2) {
        String[] strArr3 = this.specificScopeTarget;
        strArr3[0] = str;
        return inSpecificScope(strArr3, strArr, strArr2);
    }

    private boolean inSpecificScope(String[] strArr, String[] strArr2, String[] strArr3) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            String nodeName = this.stack.get(size).nodeName();
            if (StringUtil.in(nodeName, strArr)) {
                return true;
            }
            if (StringUtil.in(nodeName, strArr2)) {
                return false;
            }
            if (strArr3 != null && StringUtil.in(nodeName, strArr3)) {
                return false;
            }
        }
        Validate.fail("Should not be reachable");
        return false;
    }

    boolean inScope(String[] strArr) {
        return inSpecificScope(strArr, TagsSearchInScope, (String[]) null);
    }

    boolean inScope(String str) {
        return inScope(str, null);
    }

    boolean inScope(String str, String[] strArr) {
        return inSpecificScope(str, TagsSearchInScope, strArr);
    }

    boolean inListItemScope(String str) {
        return inScope(str, TagSearchList);
    }

    boolean inButtonScope(String str) {
        return inScope(str, TagSearchButton);
    }

    boolean inTableScope(String str) {
        return inSpecificScope(str, TagSearchTableScope, (String[]) null);
    }

    boolean inSelectScope(String str) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            String nodeName = this.stack.get(size).nodeName();
            if (nodeName.equals(str)) {
                return true;
            }
            if (!StringUtil.in(nodeName, TagSearchSelectScope)) {
                return false;
            }
        }
        Validate.fail("Should not be reachable");
        return false;
    }

    void setHeadElement(Element element) {
        this.headElement = element;
    }

    Element getHeadElement() {
        return this.headElement;
    }

    boolean isFosterInserts() {
        return this.fosterInserts;
    }

    void setFosterInserts(boolean z) {
        this.fosterInserts = z;
    }

    FormElement getFormElement() {
        return this.formElement;
    }

    void setFormElement(FormElement formElement) {
        this.formElement = formElement;
    }

    void newPendingTableCharacters() {
        this.pendingTableCharacters = new ArrayList();
    }

    List<String> getPendingTableCharacters() {
        return this.pendingTableCharacters;
    }

    void setPendingTableCharacters(List<String> list) {
        this.pendingTableCharacters = list;
    }

    void generateImpliedEndTags(String str) {
        while (str != null && !currentElement().nodeName().equals(str) && StringUtil.in(currentElement().nodeName(), TagSearchEndTags)) {
            pop();
        }
    }

    void generateImpliedEndTags() {
        generateImpliedEndTags(null);
    }

    boolean isSpecial(Element element) {
        return StringUtil.in(element.nodeName(), TagSearchSpecial);
    }

    Element lastFormattingElement() {
        if (this.formattingElements.size() <= 0) {
            return null;
        }
        return this.formattingElements.get(r0.size() - 1);
    }

    Element removeLastFormattingElement() {
        int size = this.formattingElements.size();
        if (size > 0) {
            return this.formattingElements.remove(size - 1);
        }
        return null;
    }

    void pushActiveFormattingElements(Element element) {
        int size = this.formattingElements.size() - 1;
        int i = 0;
        while (true) {
            if (size >= 0) {
                Element element2 = this.formattingElements.get(size);
                if (element2 == null) {
                    break;
                }
                if (isSameFormattingElement(element, element2)) {
                    i++;
                }
                if (i == 3) {
                    this.formattingElements.remove(size);
                    break;
                }
                size--;
            } else {
                break;
            }
        }
        this.formattingElements.add(element);
    }

    private boolean isSameFormattingElement(Element element, Element element2) {
        return element.nodeName().equals(element2.nodeName()) && element.attributes().equals(element2.attributes());
    }

    void reconstructFormattingElements() {
        Element lastFormattingElement = lastFormattingElement();
        if (lastFormattingElement == null || onStack(lastFormattingElement)) {
            return;
        }
        boolean z = true;
        int size = this.formattingElements.size() - 1;
        int i = size;
        while (i != 0) {
            i--;
            lastFormattingElement = this.formattingElements.get(i);
            if (lastFormattingElement == null || onStack(lastFormattingElement)) {
                z = false;
                break;
            }
        }
        while (true) {
            if (!z) {
                i++;
                lastFormattingElement = this.formattingElements.get(i);
            }
            Validate.notNull(lastFormattingElement);
            Element insertStartTag = insertStartTag(lastFormattingElement.nodeName());
            insertStartTag.attributes().addAll(lastFormattingElement.attributes());
            this.formattingElements.set(i, insertStartTag);
            if (i == size) {
                return;
            } else {
                z = false;
            }
        }
    }

    void clearFormattingElementsToLastMarker() {
        while (!this.formattingElements.isEmpty() && removeLastFormattingElement() != null) {
        }
    }

    void removeFromActiveFormattingElements(Element element) {
        for (int size = this.formattingElements.size() - 1; size >= 0; size--) {
            if (this.formattingElements.get(size) == element) {
                this.formattingElements.remove(size);
                return;
            }
        }
    }

    boolean isInActiveFormattingElements(Element element) {
        return isElementInQueue(this.formattingElements, element);
    }

    Element getActiveFormattingElement(String str) {
        for (int size = this.formattingElements.size() - 1; size >= 0; size--) {
            Element element = this.formattingElements.get(size);
            if (element == null) {
                return null;
            }
            if (element.nodeName().equals(str)) {
                return element;
            }
        }
        return null;
    }

    void replaceActiveFormattingElement(Element element, Element element2) {
        replaceInQueue(this.formattingElements, element, element2);
    }

    void insertMarkerToFormattingElements() {
        this.formattingElements.add(null);
    }

    void insertInFosterParent(Node node) {
        Element element;
        Element fromStack = getFromStack("table");
        boolean z = false;
        if (fromStack != null) {
            if (fromStack.parent() != null) {
                element = fromStack.parent();
                z = true;
            } else {
                element = aboveOnStack(fromStack);
            }
        } else {
            element = this.stack.get(0);
        }
        if (z) {
            Validate.notNull(fromStack);
            fromStack.before(node);
        } else {
            element.appendChild(node);
        }
    }

    public String toString() {
        return "TreeBuilder{currentToken=" + this.currentToken + ", state=" + this.state + ", currentElement=" + currentElement() + '}';
    }
}
