package org.jsoup.parser;

import java.util.List;
import org.jsoup.Jsoup;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.nodes.XmlDeclaration;
import org.jsoup.parser.Token;

/* loaded from: classes2.dex */
public class XmlTreeBuilder extends TreeBuilder {
    @Override // org.jsoup.parser.TreeBuilder
    public /* bridge */ /* synthetic */ boolean processStartTag(String str, Attributes attributes) {
        return super.processStartTag(str, attributes);
    }

    @Override // org.jsoup.parser.TreeBuilder
    ParseSettings defaultSettings() {
        return ParseSettings.preserveCase;
    }

    Document parse(String str, String str2) {
        return parse(str, str2, ParseErrorList.noTracking(), ParseSettings.preserveCase);
    }

    @Override // org.jsoup.parser.TreeBuilder
    protected void initialiseParse(String str, String str2, ParseErrorList parseErrorList, ParseSettings parseSettings) {
        super.initialiseParse(str, str2, parseErrorList, parseSettings);
        this.stack.add(this.doc);
        this.doc.outputSettings().syntax(Document.OutputSettings.Syntax.xml);
    }

    /* renamed from: org.jsoup.parser.XmlTreeBuilder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jsoup$parser$Token$TokenType;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            $SwitchMap$org$jsoup$parser$Token$TokenType = iArr;
            try {
                iArr[Token.TokenType.StartTag.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.EndTag.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Comment.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Character.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Doctype.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    @Override // org.jsoup.parser.TreeBuilder
    protected boolean process(Token token) {
        switch (AnonymousClass1.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()]) {
            case 1:
                insert(token.asStartTag());
                break;
            case 2:
                popStackToClose(token.asEndTag());
                break;
            case 3:
                insert(token.asComment());
                break;
            case 4:
                insert(token.asCharacter());
                break;
            case 5:
                insert(token.asDoctype());
                break;
            case 6:
                break;
            default:
                Validate.fail("Unexpected token type: " + token.type);
                break;
        }
        return true;
    }

    private void insertNode(Node node) {
        currentElement().appendChild(node);
    }

    Element insert(Token.StartTag startTag) {
        Tag valueOf = Tag.valueOf(startTag.name(), this.settings);
        Element element = new Element(valueOf, this.baseUri, this.settings.normalizeAttributes(startTag.attributes));
        insertNode(element);
        if (startTag.isSelfClosing()) {
            this.tokeniser.acknowledgeSelfClosingFlag();
            if (!valueOf.isKnownTag()) {
                valueOf.setSelfClosing();
            }
        } else {
            this.stack.add(element);
        }
        return element;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [org.jsoup.nodes.Node, org.jsoup.nodes.XmlDeclaration] */
    /* JADX WARN: Type inference failed for: r6v0, types: [org.jsoup.parser.XmlTreeBuilder] */
    void insert(Token.Comment comment) {
        Comment comment2 = new Comment(comment.getData(), this.baseUri);
        if (comment.bogus) {
            String data = comment2.getData();
            if (data.length() > 1 && (data.startsWith("!") || data.startsWith("?"))) {
                Element child = Jsoup.parse("<" + data.substring(1, data.length() - 1) + ">", this.baseUri, Parser.xmlParser()).child(0);
                ?? xmlDeclaration = new XmlDeclaration(this.settings.normalizeTag(child.tagName()), comment2.baseUri(), data.startsWith("!"));
                xmlDeclaration.attributes().addAll(child.attributes());
                comment2 = xmlDeclaration;
            }
        }
        insertNode(comment2);
    }

    void insert(Token.Character character) {
        insertNode(new TextNode(character.getData(), this.baseUri));
    }

    void insert(Token.Doctype doctype) {
        insertNode(new DocumentType(this.settings.normalizeTag(doctype.getName()), doctype.getPubSysKey(), doctype.getPublicIdentifier(), doctype.getSystemIdentifier(), this.baseUri));
    }

    private void popStackToClose(Token.EndTag endTag) {
        Element element;
        String name = endTag.name();
        int size = this.stack.size() - 1;
        while (true) {
            if (size < 0) {
                element = null;
                break;
            }
            element = this.stack.get(size);
            if (element.nodeName().equals(name)) {
                break;
            } else {
                size--;
            }
        }
        if (element == null) {
            return;
        }
        for (int size2 = this.stack.size() - 1; size2 >= 0; size2--) {
            Element element2 = this.stack.get(size2);
            this.stack.remove(size2);
            if (element2 == element) {
                return;
            }
        }
    }

    List<Node> parseFragment(String str, String str2, ParseErrorList parseErrorList, ParseSettings parseSettings) {
        initialiseParse(str, str2, parseErrorList, parseSettings);
        runParser();
        return this.doc.childNodes();
    }
}
