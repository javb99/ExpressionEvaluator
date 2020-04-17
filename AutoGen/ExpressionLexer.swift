// Generated from /Users/josephvanboxtel/Documents/School/WSUVancouver/spring19/cs355-programming-languages/hw/hw6_antlr/ExpressionEvaluator/Expression.g4 by ANTLR 4.8
import Antlr4

open class ExpressionLexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = ExpressionLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(ExpressionLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	static let T__0=1, T__1=2, T__2=3, T__3=4, ADD=5, SUB=6, MULT=7, DIV=8, 
            FLOAT=9, INT=10, WS=11

	public
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	public
	static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public
	static let ruleNames: [String] = [
		"T__0", "T__1", "T__2", "T__3", "ADD", "SUB", "MULT", "DIV", "FLOAT", 
		"INT", "WS"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'('", "')'", "'|'", "'^'", "'+'", "'-'", "'*'", "'/'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, nil, nil, "ADD", "SUB", "MULT", "DIV", "FLOAT", "INT", 
		"WS"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)


	override open
	func getVocabulary() -> Vocabulary {
		return ExpressionLexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, ExpressionLexer._ATN, ExpressionLexer._decisionToDFA, ExpressionLexer._sharedContextCache)
	}

	override open
	func getGrammarFileName() -> String { return "Expression.g4" }

	override open
	func getRuleNames() -> [String] { return ExpressionLexer.ruleNames }

	override open
	func getSerializedATN() -> String { return ExpressionLexer._serializedATN }

	override open
	func getChannelNames() -> [String] { return ExpressionLexer.channelNames }

	override open
	func getModeNames() -> [String] { return ExpressionLexer.modeNames }

	override open
	func getATN() -> ATN { return ExpressionLexer._ATN }


	public
	static let _serializedATN: String = ExpressionLexerATN().jsonString

	public
	static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}