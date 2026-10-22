package org.jsoup.parser;

import com.coremedia.iso.boxes.MetaBox;
import com.google.firebase.messaging.Constants;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;
import java.util.Iterator;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.FormElement;
import org.jsoup.nodes.Node;
import org.jsoup.parser.Token;

/* loaded from: classes2.dex */
enum HtmlTreeBuilderState {
    Initial { // from class: org.jsoup.parser.HtmlTreeBuilderState.1
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (token.isDoctype()) {
                Token.Doctype asDoctype = token.asDoctype();
                htmlTreeBuilder.getDocument().appendChild(new DocumentType(htmlTreeBuilder.settings.normalizeTag(asDoctype.getName()), asDoctype.getPubSysKey(), asDoctype.getPublicIdentifier(), asDoctype.getSystemIdentifier(), htmlTreeBuilder.getBaseUri()));
                if (asDoctype.isForceQuirks()) {
                    htmlTreeBuilder.getDocument().quirksMode(Document.QuirksMode.quirks);
                }
                htmlTreeBuilder.transition(BeforeHtml);
            } else {
                htmlTreeBuilder.transition(BeforeHtml);
                return htmlTreeBuilder.process(token);
            }
            return true;
        }
    },
    BeforeHtml { // from class: org.jsoup.parser.HtmlTreeBuilderState.2
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (!token.isComment()) {
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    return true;
                }
                if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                    htmlTreeBuilder.insert(token.asStartTag());
                    htmlTreeBuilder.transition(BeforeHead);
                } else {
                    if (token.isEndTag() && StringUtil.in(token.asEndTag().normalName(), "head", "body", "html", "br")) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    if (token.isEndTag()) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
            } else {
                htmlTreeBuilder.insert(token.asComment());
            }
            return true;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.insertStartTag("html");
            htmlTreeBuilder.transition(BeforeHead);
            return htmlTreeBuilder.process(token);
        }
    },
    BeforeHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.3
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                    return InBody.process(token, htmlTreeBuilder);
                }
                if (token.isStartTag() && token.asStartTag().normalName().equals("head")) {
                    htmlTreeBuilder.setHeadElement(htmlTreeBuilder.insert(token.asStartTag()));
                    htmlTreeBuilder.transition(InHead);
                } else {
                    if (token.isEndTag() && StringUtil.in(token.asEndTag().normalName(), "head", "body", "html", "br")) {
                        htmlTreeBuilder.processStartTag("head");
                        return htmlTreeBuilder.process(token);
                    }
                    if (token.isEndTag()) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.processStartTag("head");
                    return htmlTreeBuilder.process(token);
                }
            }
            return true;
        }
    },
    InHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.4
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            int i = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i == 1) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (i == 2) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (i == 3) {
                    Token.StartTag asStartTag = token.asStartTag();
                    String normalName = asStartTag.normalName();
                    if (normalName.equals("html")) {
                        return InBody.process(token, htmlTreeBuilder);
                    }
                    if (StringUtil.in(normalName, "base", "basefont", "bgsound", "command", "link")) {
                        Element insertEmpty = htmlTreeBuilder.insertEmpty(asStartTag);
                        if (normalName.equals("base") && insertEmpty.hasAttr("href")) {
                            htmlTreeBuilder.maybeSetBaseUri(insertEmpty);
                        }
                    } else if (normalName.equals(MetaBox.TYPE)) {
                        htmlTreeBuilder.insertEmpty(asStartTag);
                    } else if (normalName.equals(SettingsJsonConstants.PROMPT_TITLE_KEY)) {
                        HtmlTreeBuilderState.handleRcData(asStartTag, htmlTreeBuilder);
                    } else if (StringUtil.in(normalName, "noframes", "style")) {
                        HtmlTreeBuilderState.handleRawtext(asStartTag, htmlTreeBuilder);
                    } else if (normalName.equals("noscript")) {
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.transition(InHeadNoscript);
                    } else if (normalName.equals("script")) {
                        htmlTreeBuilder.tokeniser.transition(TokeniserState.ScriptData);
                        htmlTreeBuilder.markInsertionMode();
                        htmlTreeBuilder.transition(Text);
                        htmlTreeBuilder.insert(asStartTag);
                    } else {
                        if (normalName.equals("head")) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        return anythingElse(token, htmlTreeBuilder);
                    }
                } else if (i == 4) {
                    String normalName2 = token.asEndTag().normalName();
                    if (normalName2.equals("head")) {
                        htmlTreeBuilder.pop();
                        htmlTreeBuilder.transition(AfterHead);
                    } else {
                        if (StringUtil.in(normalName2, "body", "html", "br")) {
                            return anythingElse(token, htmlTreeBuilder);
                        }
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                } else {
                    return anythingElse(token, htmlTreeBuilder);
                }
            }
            return true;
        }

        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            treeBuilder.processEndTag("head");
            return treeBuilder.process(token);
        }
    },
    InHeadNoscript { // from class: org.jsoup.parser.HtmlTreeBuilderState.5
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return true;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                return htmlTreeBuilder.process(token, InBody);
            }
            if (!token.isEndTag() || !token.asEndTag().normalName().equals("noscript")) {
                if (HtmlTreeBuilderState.isWhitespace(token) || token.isComment() || (token.isStartTag() && StringUtil.in(token.asStartTag().normalName(), "basefont", "bgsound", "link", MetaBox.TYPE, "noframes", "style"))) {
                    return htmlTreeBuilder.process(token, InHead);
                }
                if (token.isEndTag() && token.asEndTag().normalName().equals("br")) {
                    return anythingElse(token, htmlTreeBuilder);
                }
                if ((token.isStartTag() && StringUtil.in(token.asStartTag().normalName(), "head", "noscript")) || token.isEndTag()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            htmlTreeBuilder.pop();
            htmlTreeBuilder.transition(InHead);
            return true;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.insert(new Token.Character().data(token.toString()));
            return true;
        }
    },
    AfterHead { // from class: org.jsoup.parser.HtmlTreeBuilderState.6
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return true;
            }
            if (token.isStartTag()) {
                Token.StartTag asStartTag = token.asStartTag();
                String normalName = asStartTag.normalName();
                if (normalName.equals("html")) {
                    return htmlTreeBuilder.process(token, InBody);
                }
                if (normalName.equals("body")) {
                    htmlTreeBuilder.insert(asStartTag);
                    htmlTreeBuilder.framesetOk(false);
                    htmlTreeBuilder.transition(InBody);
                    return true;
                }
                if (normalName.equals("frameset")) {
                    htmlTreeBuilder.insert(asStartTag);
                    htmlTreeBuilder.transition(InFrameset);
                    return true;
                }
                if (StringUtil.in(normalName, "base", "basefont", "bgsound", "link", MetaBox.TYPE, "noframes", "script", "style", SettingsJsonConstants.PROMPT_TITLE_KEY)) {
                    htmlTreeBuilder.error(this);
                    Element headElement = htmlTreeBuilder.getHeadElement();
                    htmlTreeBuilder.push(headElement);
                    htmlTreeBuilder.process(token, InHead);
                    htmlTreeBuilder.removeFromStack(headElement);
                    return true;
                }
                if (normalName.equals("head")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                anythingElse(token, htmlTreeBuilder);
                return true;
            }
            if (token.isEndTag()) {
                if (StringUtil.in(token.asEndTag().normalName(), "body", "html")) {
                    anythingElse(token, htmlTreeBuilder);
                    return true;
                }
                htmlTreeBuilder.error(this);
                return false;
            }
            anythingElse(token, htmlTreeBuilder);
            return true;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.processStartTag("body");
            htmlTreeBuilder.framesetOk(true);
            return htmlTreeBuilder.process(token);
        }
    },
    InBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.7
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            Element element;
            int i = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            boolean z = true;
            if (i == 1) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (i == 2) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (i == 3) {
                    Token.StartTag asStartTag = token.asStartTag();
                    String normalName = asStartTag.normalName();
                    if (normalName.equals("a")) {
                        if (htmlTreeBuilder.getActiveFormattingElement("a") != null) {
                            htmlTreeBuilder.error(this);
                            htmlTreeBuilder.processEndTag("a");
                            Element fromStack = htmlTreeBuilder.getFromStack("a");
                            if (fromStack != null) {
                                htmlTreeBuilder.removeFromActiveFormattingElements(fromStack);
                                htmlTreeBuilder.removeFromStack(fromStack);
                            }
                        }
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(asStartTag));
                    } else if (StringUtil.inSorted(normalName, Constants.InBodyStartEmptyFormatters)) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insertEmpty(asStartTag);
                        htmlTreeBuilder.framesetOk(false);
                    } else if (StringUtil.inSorted(normalName, Constants.InBodyStartPClosers)) {
                        if (htmlTreeBuilder.inButtonScope("p")) {
                            htmlTreeBuilder.processEndTag("p");
                        }
                        htmlTreeBuilder.insert(asStartTag);
                    } else if (normalName.equals("span")) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insert(asStartTag);
                    } else if (normalName.equals("li")) {
                        htmlTreeBuilder.framesetOk(false);
                        ArrayList<Element> stack = htmlTreeBuilder.getStack();
                        int size = stack.size() - 1;
                        while (true) {
                            if (size <= 0) {
                                break;
                            }
                            Element element2 = stack.get(size);
                            if (element2.nodeName().equals("li")) {
                                htmlTreeBuilder.processEndTag("li");
                                break;
                            }
                            if (htmlTreeBuilder.isSpecial(element2) && !StringUtil.inSorted(element2.nodeName(), Constants.InBodyStartLiBreakers)) {
                                break;
                            }
                            size--;
                        }
                        if (htmlTreeBuilder.inButtonScope("p")) {
                            htmlTreeBuilder.processEndTag("p");
                        }
                        htmlTreeBuilder.insert(asStartTag);
                    } else if (normalName.equals("html")) {
                        htmlTreeBuilder.error(this);
                        Element element3 = htmlTreeBuilder.getStack().get(0);
                        Iterator<Attribute> it = asStartTag.getAttributes().iterator();
                        while (it.hasNext()) {
                            Attribute next = it.next();
                            if (!element3.hasAttr(next.getKey())) {
                                element3.attributes().put(next);
                            }
                        }
                    } else {
                        if (StringUtil.inSorted(normalName, Constants.InBodyStartToHead)) {
                            return htmlTreeBuilder.process(token, InHead);
                        }
                        if (normalName.equals("body")) {
                            htmlTreeBuilder.error(this);
                            ArrayList<Element> stack2 = htmlTreeBuilder.getStack();
                            if (stack2.size() == 1 || (stack2.size() > 2 && !stack2.get(1).nodeName().equals("body"))) {
                                return false;
                            }
                            htmlTreeBuilder.framesetOk(false);
                            Element element4 = stack2.get(1);
                            Iterator<Attribute> it2 = asStartTag.getAttributes().iterator();
                            while (it2.hasNext()) {
                                Attribute next2 = it2.next();
                                if (!element4.hasAttr(next2.getKey())) {
                                    element4.attributes().put(next2);
                                }
                            }
                        } else if (normalName.equals("frameset")) {
                            htmlTreeBuilder.error(this);
                            ArrayList<Element> stack3 = htmlTreeBuilder.getStack();
                            if (stack3.size() == 1 || ((stack3.size() > 2 && !stack3.get(1).nodeName().equals("body")) || !htmlTreeBuilder.framesetOk())) {
                                return false;
                            }
                            Element element5 = stack3.get(1);
                            if (element5.parent() != null) {
                                element5.remove();
                            }
                            for (int i2 = 1; stack3.size() > i2; i2 = 1) {
                                stack3.remove(stack3.size() - i2);
                            }
                            htmlTreeBuilder.insert(asStartTag);
                            htmlTreeBuilder.transition(InFrameset);
                        } else if (StringUtil.inSorted(normalName, Constants.Headings)) {
                            if (htmlTreeBuilder.inButtonScope("p")) {
                                htmlTreeBuilder.processEndTag("p");
                            }
                            if (StringUtil.inSorted(htmlTreeBuilder.currentElement().nodeName(), Constants.Headings)) {
                                htmlTreeBuilder.error(this);
                                htmlTreeBuilder.pop();
                            }
                            htmlTreeBuilder.insert(asStartTag);
                        } else if (StringUtil.inSorted(normalName, Constants.InBodyStartPreListing)) {
                            if (htmlTreeBuilder.inButtonScope("p")) {
                                htmlTreeBuilder.processEndTag("p");
                            }
                            htmlTreeBuilder.insert(asStartTag);
                            htmlTreeBuilder.framesetOk(false);
                        } else {
                            if (normalName.equals("form")) {
                                if (htmlTreeBuilder.getFormElement() != null) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                if (htmlTreeBuilder.inButtonScope("p")) {
                                    htmlTreeBuilder.processEndTag("p");
                                }
                                htmlTreeBuilder.insertForm(asStartTag, true);
                                return true;
                            }
                            if (StringUtil.inSorted(normalName, Constants.DdDt)) {
                                htmlTreeBuilder.framesetOk(false);
                                ArrayList<Element> stack4 = htmlTreeBuilder.getStack();
                                int size2 = stack4.size() - 1;
                                while (true) {
                                    if (size2 <= 0) {
                                        break;
                                    }
                                    Element element6 = stack4.get(size2);
                                    if (StringUtil.inSorted(element6.nodeName(), Constants.DdDt)) {
                                        htmlTreeBuilder.processEndTag(element6.nodeName());
                                        break;
                                    }
                                    if (htmlTreeBuilder.isSpecial(element6) && !StringUtil.inSorted(element6.nodeName(), Constants.InBodyStartLiBreakers)) {
                                        break;
                                    }
                                    size2--;
                                }
                                if (htmlTreeBuilder.inButtonScope("p")) {
                                    htmlTreeBuilder.processEndTag("p");
                                }
                                htmlTreeBuilder.insert(asStartTag);
                            } else if (normalName.equals("plaintext")) {
                                if (htmlTreeBuilder.inButtonScope("p")) {
                                    htmlTreeBuilder.processEndTag("p");
                                }
                                htmlTreeBuilder.insert(asStartTag);
                                htmlTreeBuilder.tokeniser.transition(TokeniserState.PLAINTEXT);
                            } else if (normalName.equals("button")) {
                                if (htmlTreeBuilder.inButtonScope("button")) {
                                    htmlTreeBuilder.error(this);
                                    htmlTreeBuilder.processEndTag("button");
                                    htmlTreeBuilder.process(asStartTag);
                                } else {
                                    htmlTreeBuilder.reconstructFormattingElements();
                                    htmlTreeBuilder.insert(asStartTag);
                                    htmlTreeBuilder.framesetOk(false);
                                }
                            } else if (StringUtil.inSorted(normalName, Constants.Formatters)) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(asStartTag));
                            } else if (normalName.equals("nobr")) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                if (htmlTreeBuilder.inScope("nobr")) {
                                    htmlTreeBuilder.error(this);
                                    htmlTreeBuilder.processEndTag("nobr");
                                    htmlTreeBuilder.reconstructFormattingElements();
                                }
                                htmlTreeBuilder.pushActiveFormattingElements(htmlTreeBuilder.insert(asStartTag));
                            } else if (StringUtil.inSorted(normalName, Constants.InBodyStartApplets)) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(asStartTag);
                                htmlTreeBuilder.insertMarkerToFormattingElements();
                                htmlTreeBuilder.framesetOk(false);
                            } else if (normalName.equals("table")) {
                                if (htmlTreeBuilder.getDocument().quirksMode() != Document.QuirksMode.quirks && htmlTreeBuilder.inButtonScope("p")) {
                                    htmlTreeBuilder.processEndTag("p");
                                }
                                htmlTreeBuilder.insert(asStartTag);
                                htmlTreeBuilder.framesetOk(false);
                                htmlTreeBuilder.transition(InTable);
                            } else if (normalName.equals("input")) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                if (!htmlTreeBuilder.insertEmpty(asStartTag).attr("type").equalsIgnoreCase("hidden")) {
                                    htmlTreeBuilder.framesetOk(false);
                                }
                            } else if (StringUtil.inSorted(normalName, Constants.InBodyStartMedia)) {
                                htmlTreeBuilder.insertEmpty(asStartTag);
                            } else if (normalName.equals("hr")) {
                                if (htmlTreeBuilder.inButtonScope("p")) {
                                    htmlTreeBuilder.processEndTag("p");
                                }
                                htmlTreeBuilder.insertEmpty(asStartTag);
                                htmlTreeBuilder.framesetOk(false);
                            } else if (normalName.equals("image")) {
                                if (htmlTreeBuilder.getFromStack("svg") == null) {
                                    return htmlTreeBuilder.process(asStartTag.name("img"));
                                }
                                htmlTreeBuilder.insert(asStartTag);
                            } else if (normalName.equals("isindex")) {
                                htmlTreeBuilder.error(this);
                                if (htmlTreeBuilder.getFormElement() != null) {
                                    return false;
                                }
                                htmlTreeBuilder.tokeniser.acknowledgeSelfClosingFlag();
                                htmlTreeBuilder.processStartTag("form");
                                if (asStartTag.attributes.hasKey("action")) {
                                    htmlTreeBuilder.getFormElement().attr("action", asStartTag.attributes.get("action"));
                                }
                                htmlTreeBuilder.processStartTag("hr");
                                htmlTreeBuilder.processStartTag(Constants.ScionAnalytics.PARAM_LABEL);
                                htmlTreeBuilder.process(new Token.Character().data(asStartTag.attributes.hasKey(SettingsJsonConstants.PROMPT_KEY) ? asStartTag.attributes.get(SettingsJsonConstants.PROMPT_KEY) : "This is a searchable index. Enter search keywords: "));
                                Attributes attributes = new Attributes();
                                Iterator<Attribute> it3 = asStartTag.attributes.iterator();
                                while (it3.hasNext()) {
                                    Attribute next3 = it3.next();
                                    if (!StringUtil.inSorted(next3.getKey(), Constants.InBodyStartInputAttribs)) {
                                        attributes.put(next3);
                                    }
                                }
                                attributes.put("name", "isindex");
                                htmlTreeBuilder.processStartTag("input", attributes);
                                htmlTreeBuilder.processEndTag(Constants.ScionAnalytics.PARAM_LABEL);
                                htmlTreeBuilder.processStartTag("hr");
                                htmlTreeBuilder.processEndTag("form");
                            } else if (normalName.equals("textarea")) {
                                htmlTreeBuilder.insert(asStartTag);
                                htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
                                htmlTreeBuilder.markInsertionMode();
                                htmlTreeBuilder.framesetOk(false);
                                htmlTreeBuilder.transition(Text);
                            } else if (normalName.equals("xmp")) {
                                if (htmlTreeBuilder.inButtonScope("p")) {
                                    htmlTreeBuilder.processEndTag("p");
                                }
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.framesetOk(false);
                                HtmlTreeBuilderState.handleRawtext(asStartTag, htmlTreeBuilder);
                            } else if (normalName.equals("iframe")) {
                                htmlTreeBuilder.framesetOk(false);
                                HtmlTreeBuilderState.handleRawtext(asStartTag, htmlTreeBuilder);
                            } else if (normalName.equals("noembed")) {
                                HtmlTreeBuilderState.handleRawtext(asStartTag, htmlTreeBuilder);
                            } else if (normalName.equals("select")) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(asStartTag);
                                htmlTreeBuilder.framesetOk(false);
                                HtmlTreeBuilderState state = htmlTreeBuilder.state();
                                if (state.equals(InTable) || state.equals(InCaption) || state.equals(InTableBody) || state.equals(InRow) || state.equals(InCell)) {
                                    htmlTreeBuilder.transition(InSelectInTable);
                                } else {
                                    htmlTreeBuilder.transition(InSelect);
                                }
                            } else if (StringUtil.inSorted(normalName, Constants.InBodyStartOptions)) {
                                if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                                    htmlTreeBuilder.processEndTag("option");
                                }
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(asStartTag);
                            } else if (StringUtil.inSorted(normalName, Constants.InBodyStartRuby)) {
                                if (htmlTreeBuilder.inScope("ruby")) {
                                    htmlTreeBuilder.generateImpliedEndTags();
                                    if (!htmlTreeBuilder.currentElement().nodeName().equals("ruby")) {
                                        htmlTreeBuilder.error(this);
                                        htmlTreeBuilder.popStackToBefore("ruby");
                                    }
                                    htmlTreeBuilder.insert(asStartTag);
                                }
                            } else if (normalName.equals("math")) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(asStartTag);
                                htmlTreeBuilder.tokeniser.acknowledgeSelfClosingFlag();
                            } else if (normalName.equals("svg")) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(asStartTag);
                                htmlTreeBuilder.tokeniser.acknowledgeSelfClosingFlag();
                            } else {
                                if (StringUtil.inSorted(normalName, Constants.InBodyStartDrop)) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder.insert(asStartTag);
                            }
                        }
                    }
                } else if (i == 4) {
                    Token.EndTag asEndTag = token.asEndTag();
                    String normalName2 = asEndTag.normalName();
                    if (StringUtil.inSorted(normalName2, Constants.InBodyEndAdoptionFormatters)) {
                        int i3 = 0;
                        while (i3 < 8) {
                            Element activeFormattingElement = htmlTreeBuilder.getActiveFormattingElement(normalName2);
                            if (activeFormattingElement == null) {
                                return anyOtherEndTag(token, htmlTreeBuilder);
                            }
                            if (!htmlTreeBuilder.onStack(activeFormattingElement)) {
                                htmlTreeBuilder.error(this);
                                htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                                return z;
                            }
                            if (!htmlTreeBuilder.inScope(activeFormattingElement.nodeName())) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            if (htmlTreeBuilder.currentElement() != activeFormattingElement) {
                                htmlTreeBuilder.error(this);
                            }
                            ArrayList<Element> stack5 = htmlTreeBuilder.getStack();
                            int size3 = stack5.size();
                            Element element7 = null;
                            boolean z2 = false;
                            for (int i4 = 0; i4 < size3 && i4 < 64; i4++) {
                                element = stack5.get(i4);
                                if (element == activeFormattingElement) {
                                    element7 = stack5.get(i4 - 1);
                                    z2 = true;
                                } else if (z2 && htmlTreeBuilder.isSpecial(element)) {
                                    break;
                                }
                            }
                            element = null;
                            if (element == null) {
                                htmlTreeBuilder.popStackToClose(activeFormattingElement.nodeName());
                                htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                                return z;
                            }
                            Element element8 = element;
                            Element element9 = element8;
                            for (int i5 = 0; i5 < 3; i5++) {
                                if (htmlTreeBuilder.onStack(element8)) {
                                    element8 = htmlTreeBuilder.aboveOnStack(element8);
                                }
                                if (!htmlTreeBuilder.isInActiveFormattingElements(element8)) {
                                    htmlTreeBuilder.removeFromStack(element8);
                                } else {
                                    if (element8 == activeFormattingElement) {
                                        break;
                                    }
                                    Element element10 = new Element(Tag.valueOf(element8.nodeName(), ParseSettings.preserveCase), htmlTreeBuilder.getBaseUri());
                                    htmlTreeBuilder.replaceActiveFormattingElement(element8, element10);
                                    htmlTreeBuilder.replaceOnStack(element8, element10);
                                    if (element9.parent() != null) {
                                        element9.remove();
                                    }
                                    element10.appendChild(element9);
                                    element8 = element10;
                                    element9 = element8;
                                }
                            }
                            if (StringUtil.inSorted(element7.nodeName(), Constants.InBodyEndTableFosters)) {
                                if (element9.parent() != null) {
                                    element9.remove();
                                }
                                htmlTreeBuilder.insertInFosterParent(element9);
                            } else {
                                if (element9.parent() != null) {
                                    element9.remove();
                                }
                                element7.appendChild(element9);
                            }
                            Element element11 = new Element(activeFormattingElement.tag(), htmlTreeBuilder.getBaseUri());
                            element11.attributes().addAll(activeFormattingElement.attributes());
                            for (Node node : (Node[]) element.childNodes().toArray(new Node[element.childNodeSize()])) {
                                element11.appendChild(node);
                            }
                            element.appendChild(element11);
                            htmlTreeBuilder.removeFromActiveFormattingElements(activeFormattingElement);
                            htmlTreeBuilder.removeFromStack(activeFormattingElement);
                            htmlTreeBuilder.insertOnStackAfter(element, element11);
                            i3++;
                            z = true;
                        }
                    } else if (StringUtil.inSorted(normalName2, Constants.InBodyEndClosers)) {
                        if (!htmlTreeBuilder.inScope(normalName2)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.generateImpliedEndTags();
                        if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName2)) {
                            htmlTreeBuilder.error(this);
                        }
                        htmlTreeBuilder.popStackToClose(normalName2);
                    } else {
                        if (normalName2.equals("span")) {
                            return anyOtherEndTag(token, htmlTreeBuilder);
                        }
                        if (normalName2.equals("li")) {
                            if (!htmlTreeBuilder.inListItemScope(normalName2)) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.generateImpliedEndTags(normalName2);
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName2)) {
                                htmlTreeBuilder.error(this);
                            }
                            htmlTreeBuilder.popStackToClose(normalName2);
                        } else if (normalName2.equals("body")) {
                            if (!htmlTreeBuilder.inScope("body")) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.transition(AfterBody);
                        } else if (normalName2.equals("html")) {
                            if (htmlTreeBuilder.processEndTag("body")) {
                                return htmlTreeBuilder.process(asEndTag);
                            }
                        } else if (normalName2.equals("form")) {
                            FormElement formElement = htmlTreeBuilder.getFormElement();
                            htmlTreeBuilder.setFormElement(null);
                            if (formElement == null || !htmlTreeBuilder.inScope(normalName2)) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.generateImpliedEndTags();
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName2)) {
                                htmlTreeBuilder.error(this);
                            }
                            htmlTreeBuilder.removeFromStack(formElement);
                        } else if (normalName2.equals("p")) {
                            if (!htmlTreeBuilder.inButtonScope(normalName2)) {
                                htmlTreeBuilder.error(this);
                                htmlTreeBuilder.processStartTag(normalName2);
                                return htmlTreeBuilder.process(asEndTag);
                            }
                            htmlTreeBuilder.generateImpliedEndTags(normalName2);
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName2)) {
                                htmlTreeBuilder.error(this);
                            }
                            htmlTreeBuilder.popStackToClose(normalName2);
                        } else if (StringUtil.inSorted(normalName2, Constants.DdDt)) {
                            if (!htmlTreeBuilder.inScope(normalName2)) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.generateImpliedEndTags(normalName2);
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName2)) {
                                htmlTreeBuilder.error(this);
                            }
                            htmlTreeBuilder.popStackToClose(normalName2);
                        } else if (!StringUtil.inSorted(normalName2, Constants.Headings)) {
                            if (normalName2.equals("sarcasm")) {
                                return anyOtherEndTag(token, htmlTreeBuilder);
                            }
                            if (StringUtil.inSorted(normalName2, Constants.InBodyStartApplets)) {
                                if (!htmlTreeBuilder.inScope("name")) {
                                    if (!htmlTreeBuilder.inScope(normalName2)) {
                                        htmlTreeBuilder.error(this);
                                        return false;
                                    }
                                    htmlTreeBuilder.generateImpliedEndTags();
                                    if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName2)) {
                                        htmlTreeBuilder.error(this);
                                    }
                                    htmlTreeBuilder.popStackToClose(normalName2);
                                    htmlTreeBuilder.clearFormattingElementsToLastMarker();
                                }
                            } else {
                                if (normalName2.equals("br")) {
                                    htmlTreeBuilder.error(this);
                                    htmlTreeBuilder.processStartTag("br");
                                    return false;
                                }
                                return anyOtherEndTag(token, htmlTreeBuilder);
                            }
                        } else {
                            if (!htmlTreeBuilder.inScope(Constants.Headings)) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.generateImpliedEndTags(normalName2);
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName2)) {
                                htmlTreeBuilder.error(this);
                            }
                            htmlTreeBuilder.popStackToClose(Constants.Headings);
                        }
                    }
                } else if (i == 5) {
                    Token.Character asCharacter = token.asCharacter();
                    if (asCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    if (htmlTreeBuilder.framesetOk() && HtmlTreeBuilderState.isWhitespace(asCharacter)) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insert(asCharacter);
                    } else {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder.insert(asCharacter);
                        htmlTreeBuilder.framesetOk(false);
                    }
                }
            }
            return true;
        }

        boolean anyOtherEndTag(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            String normalName = token.asEndTag().normalName();
            ArrayList<Element> stack = htmlTreeBuilder.getStack();
            int size = stack.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                Element element = stack.get(size);
                if (element.nodeName().equals(normalName)) {
                    htmlTreeBuilder.generateImpliedEndTags(normalName);
                    if (!normalName.equals(htmlTreeBuilder.currentElement().nodeName())) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(normalName);
                } else {
                    if (htmlTreeBuilder.isSpecial(element)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    size--;
                }
            }
            return true;
        }
    },
    Text { // from class: org.jsoup.parser.HtmlTreeBuilderState.8
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isCharacter()) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isEOF()) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
                return htmlTreeBuilder.process(token);
            }
            if (!token.isEndTag()) {
                return true;
            }
            htmlTreeBuilder.pop();
            htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
            return true;
        }
    },
    InTable { // from class: org.jsoup.parser.HtmlTreeBuilderState.9
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isCharacter()) {
                htmlTreeBuilder.newPendingTableCharacters();
                htmlTreeBuilder.markInsertionMode();
                htmlTreeBuilder.transition(InTableText);
                return htmlTreeBuilder.process(token);
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isStartTag()) {
                Token.StartTag asStartTag = token.asStartTag();
                String normalName = asStartTag.normalName();
                if (normalName.equals("caption")) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.insertMarkerToFormattingElements();
                    htmlTreeBuilder.insert(asStartTag);
                    htmlTreeBuilder.transition(InCaption);
                } else if (normalName.equals("colgroup")) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.insert(asStartTag);
                    htmlTreeBuilder.transition(InColumnGroup);
                } else {
                    if (normalName.equals("col")) {
                        htmlTreeBuilder.processStartTag("colgroup");
                        return htmlTreeBuilder.process(token);
                    }
                    if (StringUtil.in(normalName, "tbody", "tfoot", "thead")) {
                        htmlTreeBuilder.clearStackToTableContext();
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.transition(InTableBody);
                    } else {
                        if (StringUtil.in(normalName, "td", "th", "tr")) {
                            htmlTreeBuilder.processStartTag("tbody");
                            return htmlTreeBuilder.process(token);
                        }
                        if (normalName.equals("table")) {
                            htmlTreeBuilder.error(this);
                            if (htmlTreeBuilder.processEndTag("table")) {
                                return htmlTreeBuilder.process(token);
                            }
                        } else {
                            if (StringUtil.in(normalName, "style", "script")) {
                                return htmlTreeBuilder.process(token, InHead);
                            }
                            if (normalName.equals("input")) {
                                if (!asStartTag.attributes.get("type").equalsIgnoreCase("hidden")) {
                                    return anythingElse(token, htmlTreeBuilder);
                                }
                                htmlTreeBuilder.insertEmpty(asStartTag);
                            } else if (normalName.equals("form")) {
                                htmlTreeBuilder.error(this);
                                if (htmlTreeBuilder.getFormElement() != null) {
                                    return false;
                                }
                                htmlTreeBuilder.insertForm(asStartTag, false);
                            } else {
                                return anythingElse(token, htmlTreeBuilder);
                            }
                        }
                    }
                }
                return true;
            }
            if (token.isEndTag()) {
                String normalName2 = token.asEndTag().normalName();
                if (normalName2.equals("table")) {
                    if (!htmlTreeBuilder.inTableScope(normalName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.popStackToClose("table");
                    htmlTreeBuilder.resetInsertionMode();
                    return true;
                }
                if (StringUtil.in(normalName2, "body", "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            if (token.isEOF()) {
                if (htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                    htmlTreeBuilder.error(this);
                }
                return true;
            }
            return anythingElse(token, htmlTreeBuilder);
        }

        boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            if (StringUtil.in(htmlTreeBuilder.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", "tr")) {
                htmlTreeBuilder.setFosterInserts(true);
                boolean process = htmlTreeBuilder.process(token, InBody);
                htmlTreeBuilder.setFosterInserts(false);
                return process;
            }
            return htmlTreeBuilder.process(token, InBody);
        }
    },
    InTableText { // from class: org.jsoup.parser.HtmlTreeBuilderState.10
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()] == 5) {
                Token.Character asCharacter = token.asCharacter();
                if (asCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.getPendingTableCharacters().add(asCharacter.getData());
                return true;
            }
            if (htmlTreeBuilder.getPendingTableCharacters().size() > 0) {
                for (String str : htmlTreeBuilder.getPendingTableCharacters()) {
                    if (!HtmlTreeBuilderState.isWhitespace(str)) {
                        htmlTreeBuilder.error(this);
                        if (StringUtil.in(htmlTreeBuilder.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", "tr")) {
                            htmlTreeBuilder.setFosterInserts(true);
                            htmlTreeBuilder.process(new Token.Character().data(str), InBody);
                            htmlTreeBuilder.setFosterInserts(false);
                        } else {
                            htmlTreeBuilder.process(new Token.Character().data(str), InBody);
                        }
                    } else {
                        htmlTreeBuilder.insert(new Token.Character().data(str));
                    }
                }
                htmlTreeBuilder.newPendingTableCharacters();
            }
            htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
            return htmlTreeBuilder.process(token);
        }
    },
    InCaption { // from class: org.jsoup.parser.HtmlTreeBuilderState.11
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isEndTag() && token.asEndTag().normalName().equals("caption")) {
                if (!htmlTreeBuilder.inTableScope(token.asEndTag().normalName())) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.generateImpliedEndTags();
                if (!htmlTreeBuilder.currentElement().nodeName().equals("caption")) {
                    htmlTreeBuilder.error(this);
                }
                htmlTreeBuilder.popStackToClose("caption");
                htmlTreeBuilder.clearFormattingElementsToLastMarker();
                htmlTreeBuilder.transition(InTable);
                return true;
            }
            if ((token.isStartTag() && StringUtil.in(token.asStartTag().normalName(), "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr")) || (token.isEndTag() && token.asEndTag().normalName().equals("table"))) {
                htmlTreeBuilder.error(this);
                if (htmlTreeBuilder.processEndTag("caption")) {
                    return htmlTreeBuilder.process(token);
                }
                return true;
            }
            if (token.isEndTag() && StringUtil.in(token.asEndTag().normalName(), "body", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                htmlTreeBuilder.error(this);
                return false;
            }
            return htmlTreeBuilder.process(token, InBody);
        }
    },
    InColumnGroup { // from class: org.jsoup.parser.HtmlTreeBuilderState.12
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            int i = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i == 1) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (i == 2) {
                htmlTreeBuilder.error(this);
            } else if (i == 3) {
                Token.StartTag asStartTag = token.asStartTag();
                String normalName = asStartTag.normalName();
                if (normalName.equals("html")) {
                    return htmlTreeBuilder.process(token, InBody);
                }
                if (normalName.equals("col")) {
                    htmlTreeBuilder.insertEmpty(asStartTag);
                } else {
                    return anythingElse(token, htmlTreeBuilder);
                }
            } else {
                if (i != 4) {
                    if (i == 6) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                            return true;
                        }
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    return anythingElse(token, htmlTreeBuilder);
                }
                if (token.asEndTag().normalName().equals("colgroup")) {
                    if (htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(InTable);
                } else {
                    return anythingElse(token, htmlTreeBuilder);
                }
            }
            return true;
        }

        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.processEndTag("colgroup")) {
                return treeBuilder.process(token);
            }
            return true;
        }
    },
    InTableBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.13
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            int i = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i == 3) {
                Token.StartTag asStartTag = token.asStartTag();
                String normalName = asStartTag.normalName();
                if (normalName.equals("tr")) {
                    htmlTreeBuilder.clearStackToTableBodyContext();
                    htmlTreeBuilder.insert(asStartTag);
                    htmlTreeBuilder.transition(InRow);
                    return true;
                }
                if (StringUtil.in(normalName, "th", "td")) {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.processStartTag("tr");
                    return htmlTreeBuilder.process(asStartTag);
                }
                if (StringUtil.in(normalName, "caption", "col", "colgroup", "tbody", "tfoot", "thead")) {
                    return exitTableBody(token, htmlTreeBuilder);
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            if (i == 4) {
                String normalName2 = token.asEndTag().normalName();
                if (StringUtil.in(normalName2, "tbody", "tfoot", "thead")) {
                    if (!htmlTreeBuilder.inTableScope(normalName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableBodyContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(InTable);
                    return true;
                }
                if (normalName2.equals("table")) {
                    return exitTableBody(token, htmlTreeBuilder);
                }
                if (StringUtil.in(normalName2, "body", "caption", "col", "colgroup", "html", "td", "th", "tr")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            return anythingElse(token, htmlTreeBuilder);
        }

        private boolean exitTableBody(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (!htmlTreeBuilder.inTableScope("tbody") && !htmlTreeBuilder.inTableScope("thead") && !htmlTreeBuilder.inScope("tfoot")) {
                htmlTreeBuilder.error(this);
                return false;
            }
            htmlTreeBuilder.clearStackToTableBodyContext();
            htmlTreeBuilder.processEndTag(htmlTreeBuilder.currentElement().nodeName());
            return htmlTreeBuilder.process(token);
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, InTable);
        }
    },
    InRow { // from class: org.jsoup.parser.HtmlTreeBuilderState.14
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isStartTag()) {
                Token.StartTag asStartTag = token.asStartTag();
                String normalName = asStartTag.normalName();
                if (StringUtil.in(normalName, "th", "td")) {
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.insert(asStartTag);
                    htmlTreeBuilder.transition(InCell);
                    htmlTreeBuilder.insertMarkerToFormattingElements();
                    return true;
                }
                if (StringUtil.in(normalName, "caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr")) {
                    return handleMissingTr(token, htmlTreeBuilder);
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            if (token.isEndTag()) {
                String normalName2 = token.asEndTag().normalName();
                if (normalName2.equals("tr")) {
                    if (!htmlTreeBuilder.inTableScope(normalName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(InTableBody);
                    return true;
                }
                if (normalName2.equals("table")) {
                    return handleMissingTr(token, htmlTreeBuilder);
                }
                if (StringUtil.in(normalName2, "tbody", "tfoot", "thead")) {
                    if (!htmlTreeBuilder.inTableScope(normalName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.processEndTag("tr");
                    return htmlTreeBuilder.process(token);
                }
                if (StringUtil.in(normalName2, "body", "caption", "col", "colgroup", "html", "td", "th")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            return anythingElse(token, htmlTreeBuilder);
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, InTable);
        }

        private boolean handleMissingTr(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.processEndTag("tr")) {
                return treeBuilder.process(token);
            }
            return false;
        }
    },
    InCell { // from class: org.jsoup.parser.HtmlTreeBuilderState.15
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isEndTag()) {
                String normalName = token.asEndTag().normalName();
                if (StringUtil.in(normalName, "td", "th")) {
                    if (!htmlTreeBuilder.inTableScope(normalName)) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.transition(InRow);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags();
                    if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(normalName);
                    htmlTreeBuilder.clearFormattingElementsToLastMarker();
                    htmlTreeBuilder.transition(InRow);
                    return true;
                }
                if (StringUtil.in(normalName, "body", "caption", "col", "colgroup", "html")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (StringUtil.in(normalName, "table", "tbody", "tfoot", "thead", "tr")) {
                    if (!htmlTreeBuilder.inTableScope(normalName)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    closeCell(htmlTreeBuilder);
                    return htmlTreeBuilder.process(token);
                }
                return anythingElse(token, htmlTreeBuilder);
            }
            if (token.isStartTag() && StringUtil.in(token.asStartTag().normalName(), "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                if (!htmlTreeBuilder.inTableScope("td") && !htmlTreeBuilder.inTableScope("th")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                closeCell(htmlTreeBuilder);
                return htmlTreeBuilder.process(token);
            }
            return anythingElse(token, htmlTreeBuilder);
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, InBody);
        }

        private void closeCell(HtmlTreeBuilder htmlTreeBuilder) {
            if (htmlTreeBuilder.inTableScope("td")) {
                htmlTreeBuilder.processEndTag("td");
            } else {
                htmlTreeBuilder.processEndTag("th");
            }
        }
    },
    InSelect { // from class: org.jsoup.parser.HtmlTreeBuilderState.16
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            switch (AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()]) {
                case 1:
                    htmlTreeBuilder.insert(token.asComment());
                    return true;
                case 2:
                    htmlTreeBuilder.error(this);
                    return false;
                case 3:
                    Token.StartTag asStartTag = token.asStartTag();
                    String normalName = asStartTag.normalName();
                    if (normalName.equals("html")) {
                        return htmlTreeBuilder.process(asStartTag, InBody);
                    }
                    if (normalName.equals("option")) {
                        htmlTreeBuilder.processEndTag("option");
                        htmlTreeBuilder.insert(asStartTag);
                        return true;
                    }
                    if (normalName.equals("optgroup")) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                            htmlTreeBuilder.processEndTag("option");
                        } else if (htmlTreeBuilder.currentElement().nodeName().equals("optgroup")) {
                            htmlTreeBuilder.processEndTag("optgroup");
                        }
                        htmlTreeBuilder.insert(asStartTag);
                        return true;
                    }
                    if (normalName.equals("select")) {
                        htmlTreeBuilder.error(this);
                        return htmlTreeBuilder.processEndTag("select");
                    }
                    if (StringUtil.in(normalName, "input", "keygen", "textarea")) {
                        htmlTreeBuilder.error(this);
                        if (!htmlTreeBuilder.inSelectScope("select")) {
                            return false;
                        }
                        htmlTreeBuilder.processEndTag("select");
                        return htmlTreeBuilder.process(asStartTag);
                    }
                    if (normalName.equals("script")) {
                        return htmlTreeBuilder.process(token, InHead);
                    }
                    return anythingElse(token, htmlTreeBuilder);
                case 4:
                    String normalName2 = token.asEndTag().normalName();
                    if (normalName2.equals("optgroup")) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals("option") && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()) != null && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()).nodeName().equals("optgroup")) {
                            htmlTreeBuilder.processEndTag("option");
                        }
                        if (htmlTreeBuilder.currentElement().nodeName().equals("optgroup")) {
                            htmlTreeBuilder.pop();
                            return true;
                        }
                        htmlTreeBuilder.error(this);
                        return true;
                    }
                    if (normalName2.equals("option")) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                            htmlTreeBuilder.pop();
                            return true;
                        }
                        htmlTreeBuilder.error(this);
                        return true;
                    }
                    if (normalName2.equals("select")) {
                        if (!htmlTreeBuilder.inSelectScope(normalName2)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.popStackToClose(normalName2);
                        htmlTreeBuilder.resetInsertionMode();
                        return true;
                    }
                    return anythingElse(token, htmlTreeBuilder);
                case 5:
                    Token.Character asCharacter = token.asCharacter();
                    if (asCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.insert(asCharacter);
                    return true;
                case 6:
                    if (htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                        return true;
                    }
                    htmlTreeBuilder.error(this);
                    return true;
                default:
                    return anythingElse(token, htmlTreeBuilder);
            }
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    InSelectInTable { // from class: org.jsoup.parser.HtmlTreeBuilderState.17
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isStartTag() && StringUtil.in(token.asStartTag().normalName(), "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.processEndTag("select");
                return htmlTreeBuilder.process(token);
            }
            if (token.isEndTag() && StringUtil.in(token.asEndTag().normalName(), "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                htmlTreeBuilder.error(this);
                if (!htmlTreeBuilder.inTableScope(token.asEndTag().normalName())) {
                    return false;
                }
                htmlTreeBuilder.processEndTag("select");
                return htmlTreeBuilder.process(token);
            }
            return htmlTreeBuilder.process(token, InSelect);
        }
    },
    AfterBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.18
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return htmlTreeBuilder.process(token, InBody);
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                return htmlTreeBuilder.process(token, InBody);
            }
            if (token.isEndTag() && token.asEndTag().normalName().equals("html")) {
                if (htmlTreeBuilder.isFragmentParsing()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.transition(AfterAfterBody);
                return true;
            }
            if (token.isEOF()) {
                return true;
            }
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.transition(InBody);
            return htmlTreeBuilder.process(token);
        }
    },
    InFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.19
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
            } else if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else {
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (token.isStartTag()) {
                    Token.StartTag asStartTag = token.asStartTag();
                    String normalName = asStartTag.normalName();
                    if (normalName.equals("html")) {
                        return htmlTreeBuilder.process(asStartTag, InBody);
                    }
                    if (normalName.equals("frameset")) {
                        htmlTreeBuilder.insert(asStartTag);
                    } else if (normalName.equals("frame")) {
                        htmlTreeBuilder.insertEmpty(asStartTag);
                    } else {
                        if (normalName.equals("noframes")) {
                            return htmlTreeBuilder.process(asStartTag, InHead);
                        }
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                } else if (token.isEndTag() && token.asEndTag().normalName().equals("frameset")) {
                    if (htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.pop();
                    if (!htmlTreeBuilder.isFragmentParsing() && !htmlTreeBuilder.currentElement().nodeName().equals("frameset")) {
                        htmlTreeBuilder.transition(AfterFrameset);
                    }
                } else if (token.isEOF()) {
                    if (!htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                        htmlTreeBuilder.error(this);
                    }
                } else {
                    htmlTreeBuilder.error(this);
                    return false;
                }
            }
            return true;
        }
    },
    AfterFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.20
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                return htmlTreeBuilder.process(token, InBody);
            }
            if (token.isEndTag() && token.asEndTag().normalName().equals("html")) {
                htmlTreeBuilder.transition(AfterAfterFrameset);
                return true;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("noframes")) {
                return htmlTreeBuilder.process(token, InHead);
            }
            if (token.isEOF()) {
                return true;
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    AfterAfterBody { // from class: org.jsoup.parser.HtmlTreeBuilderState.21
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype() || HtmlTreeBuilderState.isWhitespace(token) || (token.isStartTag() && token.asStartTag().normalName().equals("html"))) {
                return htmlTreeBuilder.process(token, InBody);
            }
            if (token.isEOF()) {
                return true;
            }
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.transition(InBody);
            return htmlTreeBuilder.process(token);
        }
    },
    AfterAfterFrameset { // from class: org.jsoup.parser.HtmlTreeBuilderState.22
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
                return true;
            }
            if (token.isDoctype() || HtmlTreeBuilderState.isWhitespace(token) || (token.isStartTag() && token.asStartTag().normalName().equals("html"))) {
                return htmlTreeBuilder.process(token, InBody);
            }
            if (token.isEOF()) {
                return true;
            }
            if (token.isStartTag() && token.asStartTag().normalName().equals("noframes")) {
                return htmlTreeBuilder.process(token, InHead);
            }
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    ForeignContent { // from class: org.jsoup.parser.HtmlTreeBuilderState.23
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return true;
        }
    };

    private static String nullString = String.valueOf((char) 0);

    abstract boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder);

    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$24, reason: invalid class name */
    static /* synthetic */ class AnonymousClass24 {
        static final /* synthetic */ int[] $SwitchMap$org$jsoup$parser$Token$TokenType;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            $SwitchMap$org$jsoup$parser$Token$TokenType = iArr;
            try {
                iArr[Token.TokenType.Comment.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Doctype.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.StartTag.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.EndTag.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Character.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWhitespace(Token token) {
        if (token.isCharacter()) {
            return isWhitespace(token.asCharacter().getData());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isWhitespace(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!StringUtil.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRcData(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.insert(startTag);
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleRawtext(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.insert(startTag);
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rawtext);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
    }

    private static final class Constants {
        private static final String[] InBodyStartToHead = {"base", "basefont", "bgsound", "command", "link", MetaBox.TYPE, "noframes", "script", "style", SettingsJsonConstants.PROMPT_TITLE_KEY};
        private static final String[] InBodyStartPClosers = {"address", "article", "aside", "blockquote", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", "p", "section", "summary", "ul"};
        private static final String[] Headings = {"h1", "h2", "h3", "h4", "h5", "h6"};
        private static final String[] InBodyStartPreListing = {"pre", "listing"};
        private static final String[] InBodyStartLiBreakers = {"address", "div", "p"};
        private static final String[] DdDt = {"dd", "dt"};
        private static final String[] Formatters = {"b", "big", "code", "em", "font", "i", "s", "small", "strike", "strong", "tt", "u"};
        private static final String[] InBodyStartApplets = {"applet", "marquee", "object"};
        private static final String[] InBodyStartEmptyFormatters = {"area", "br", "embed", "img", "keygen", "wbr"};
        private static final String[] InBodyStartMedia = {"param", "source", "track"};
        private static final String[] InBodyStartInputAttribs = {"name", "action", SettingsJsonConstants.PROMPT_KEY};
        private static final String[] InBodyStartOptions = {"optgroup", "option"};
        private static final String[] InBodyStartRuby = {"rp", "rt"};
        private static final String[] InBodyStartDrop = {"caption", "col", "colgroup", "frame", "head", "tbody", "td", "tfoot", "th", "thead", "tr"};
        private static final String[] InBodyEndClosers = {"address", "article", "aside", "blockquote", "button", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", "pre", "section", "summary", "ul"};
        private static final String[] InBodyEndAdoptionFormatters = {"a", "b", "big", "code", "em", "font", "i", "nobr", "s", "small", "strike", "strong", "tt", "u"};
        private static final String[] InBodyEndTableFosters = {"table", "tbody", "tfoot", "thead", "tr"};

        private Constants() {
        }
    }
}
