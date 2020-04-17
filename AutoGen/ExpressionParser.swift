// Generated from /Users/josephvanboxtel/Documents/School/WSUVancouver/spring19/cs355-programming-languages/hw/hw6_antlr/ExpressionEvaluator/Expression.g4 by ANTLR 4.8
import Antlr4

open class ExpressionParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = ExpressionParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(ExpressionParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	enum Tokens: Int {
		case EOF = -1, T__0 = 1, T__1 = 2, T__2 = 3, T__3 = 4, ADD = 5, SUB = 6, 
                 MULT = 7, DIV = 8, FLOAT = 9, INT = 10, WS = 11
	}

	public
	static let RULE_s = 0, RULE_e = 1

	public
	static let ruleNames: [String] = [
		"s", "e"
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
	func getGrammarFileName() -> String { return "Expression.g4" }

	override open
	func getRuleNames() -> [String] { return ExpressionParser.ruleNames }

	override open
	func getSerializedATN() -> String { return ExpressionParser._serializedATN }

	override open
	func getATN() -> ATN { return ExpressionParser._ATN }


	override open
	func getVocabulary() -> Vocabulary {
	    return ExpressionParser.VOCABULARY
	}

	override public
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,ExpressionParser._ATN,ExpressionParser._decisionToDFA, ExpressionParser._sharedContextCache)
	}


	public class SContext: ParserRuleContext {
			open
			func e() -> EContext? {
				return getRuleContext(EContext.self, 0)
			}
		override open
		func getRuleIndex() -> Int {
			return ExpressionParser.RULE_s
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? ExpressionVisitor {
			    return visitor.visitS(self)
			}
			else if let visitor = visitor as? ExpressionBaseVisitor {
			    return visitor.visitS(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 open func s() throws -> SContext {
		var _localctx: SContext = SContext(_ctx, getState())
		try enterRule(_localctx, 0, ExpressionParser.RULE_s)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(4)
		 	try e(0)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	public class EContext: ParserRuleContext {
		override open
		func getRuleIndex() -> Int {
			return ExpressionParser.RULE_e
		}
	}
	public class DivContext: EContext {
			open
			func e() -> [EContext] {
				return getRuleContexts(EContext.self)
			}
			open
			func e(_ i: Int) -> EContext? {
				return getRuleContext(EContext.self, i)
			}
			open
			func DIV() -> TerminalNode? {
				return getToken(ExpressionParser.Tokens.DIV.rawValue, 0)
			}

		public
		init(_ ctx: EContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? ExpressionVisitor {
			    return visitor.visitDiv(self)
			}
			else if let visitor = visitor as? ExpressionBaseVisitor {
			    return visitor.visitDiv(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class AddContext: EContext {
			open
			func e() -> [EContext] {
				return getRuleContexts(EContext.self)
			}
			open
			func e(_ i: Int) -> EContext? {
				return getRuleContext(EContext.self, i)
			}
			open
			func ADD() -> TerminalNode? {
				return getToken(ExpressionParser.Tokens.ADD.rawValue, 0)
			}

		public
		init(_ ctx: EContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? ExpressionVisitor {
			    return visitor.visitAdd(self)
			}
			else if let visitor = visitor as? ExpressionBaseVisitor {
			    return visitor.visitAdd(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class FloatContext: EContext {
			open
			func FLOAT() -> TerminalNode? {
				return getToken(ExpressionParser.Tokens.FLOAT.rawValue, 0)
			}

		public
		init(_ ctx: EContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? ExpressionVisitor {
			    return visitor.visitFloat(self)
			}
			else if let visitor = visitor as? ExpressionBaseVisitor {
			    return visitor.visitFloat(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class SubContext: EContext {
			open
			func e() -> [EContext] {
				return getRuleContexts(EContext.self)
			}
			open
			func e(_ i: Int) -> EContext? {
				return getRuleContext(EContext.self, i)
			}
			open
			func SUB() -> TerminalNode? {
				return getToken(ExpressionParser.Tokens.SUB.rawValue, 0)
			}

		public
		init(_ ctx: EContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? ExpressionVisitor {
			    return visitor.visitSub(self)
			}
			else if let visitor = visitor as? ExpressionBaseVisitor {
			    return visitor.visitSub(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class AbsContext: EContext {
			open
			func e() -> EContext? {
				return getRuleContext(EContext.self, 0)
			}

		public
		init(_ ctx: EContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? ExpressionVisitor {
			    return visitor.visitAbs(self)
			}
			else if let visitor = visitor as? ExpressionBaseVisitor {
			    return visitor.visitAbs(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class MultContext: EContext {
			open
			func e() -> [EContext] {
				return getRuleContexts(EContext.self)
			}
			open
			func e(_ i: Int) -> EContext? {
				return getRuleContext(EContext.self, i)
			}
			open
			func MULT() -> TerminalNode? {
				return getToken(ExpressionParser.Tokens.MULT.rawValue, 0)
			}

		public
		init(_ ctx: EContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? ExpressionVisitor {
			    return visitor.visitMult(self)
			}
			else if let visitor = visitor as? ExpressionBaseVisitor {
			    return visitor.visitMult(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class ParensContext: EContext {
			open
			func e() -> EContext? {
				return getRuleContext(EContext.self, 0)
			}

		public
		init(_ ctx: EContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? ExpressionVisitor {
			    return visitor.visitParens(self)
			}
			else if let visitor = visitor as? ExpressionBaseVisitor {
			    return visitor.visitParens(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	public class ExpContext: EContext {
			open
			func e() -> [EContext] {
				return getRuleContexts(EContext.self)
			}
			open
			func e(_ i: Int) -> EContext? {
				return getRuleContext(EContext.self, i)
			}

		public
		init(_ ctx: EContext) {
			super.init()
			copyFrom(ctx)
		}
		override open
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? ExpressionVisitor {
			    return visitor.visitExp(self)
			}
			else if let visitor = visitor as? ExpressionBaseVisitor {
			    return visitor.visitExp(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}

	 public final  func e( ) throws -> EContext   {
		return try e(0)
	}
	@discardableResult
	private func e(_ _p: Int) throws -> EContext   {
		let _parentctx: ParserRuleContext? = _ctx
		var _parentState: Int = getState()
		var _localctx: EContext = EContext(_ctx, _parentState)
		var  _prevctx: EContext = _localctx
		var _startState: Int = 2
		try enterRecursionRule(_localctx, 2, ExpressionParser.RULE_e, _p)
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(16)
			try _errHandler.sync(self)
			switch (ExpressionParser.Tokens(rawValue: try _input.LA(1))!) {
			case .T__0:
				_localctx = ParensContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx

				setState(7)
				try match(ExpressionParser.Tokens.T__0.rawValue)
				setState(8)
				try e(0)
				setState(9)
				try match(ExpressionParser.Tokens.T__1.rawValue)

				break

			case .T__2:
				_localctx = AbsContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(11)
				try match(ExpressionParser.Tokens.T__2.rawValue)
				setState(12)
				try e(0)
				setState(13)
				try match(ExpressionParser.Tokens.T__2.rawValue)

				break

			case .FLOAT:
				_localctx = FloatContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(15)
				try match(ExpressionParser.Tokens.FLOAT.rawValue)

				break
			default:
				throw ANTLRException.recognition(e: NoViableAltException(self))
			}
			_ctx!.stop = try _input.LT(-1)
			setState(35)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,2,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					setState(33)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,1, _ctx)) {
					case 1:
						_localctx = ExpContext(  EContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, ExpressionParser.RULE_e)
						setState(18)
						if (!(precpred(_ctx, 6))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 6)"))
						}
						setState(19)
						try match(ExpressionParser.Tokens.T__3.rawValue)
						setState(20)
						try e(7)

						break
					case 2:
						_localctx = MultContext(  EContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, ExpressionParser.RULE_e)
						setState(21)
						if (!(precpred(_ctx, 5))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 5)"))
						}
						setState(22)
						try match(ExpressionParser.Tokens.MULT.rawValue)
						setState(23)
						try e(6)

						break
					case 3:
						_localctx = DivContext(  EContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, ExpressionParser.RULE_e)
						setState(24)
						if (!(precpred(_ctx, 4))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 4)"))
						}
						setState(25)
						try match(ExpressionParser.Tokens.DIV.rawValue)
						setState(26)
						try e(5)

						break
					case 4:
						_localctx = AddContext(  EContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, ExpressionParser.RULE_e)
						setState(27)
						if (!(precpred(_ctx, 3))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 3)"))
						}
						setState(28)
						try match(ExpressionParser.Tokens.ADD.rawValue)
						setState(29)
						try e(4)

						break
					case 5:
						_localctx = SubContext(  EContext(_parentctx, _parentState))
						try pushNewRecursionContext(_localctx, _startState, ExpressionParser.RULE_e)
						setState(30)
						if (!(precpred(_ctx, 2))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 2)"))
						}
						setState(31)
						try match(ExpressionParser.Tokens.SUB.rawValue)
						setState(32)
						try e(3)

						break
					default: break
					}
			 
				}
				setState(37)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,2,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	override open
	func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int,  _ predIndex: Int)throws -> Bool {
		switch (ruleIndex) {
		case  1:
			return try e_sempred(_localctx?.castdown(EContext.self), predIndex)
	    default: return true
		}
	}
	private func e_sempred(_ _localctx: EContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return precpred(_ctx, 6)
		    case 1:return precpred(_ctx, 5)
		    case 2:return precpred(_ctx, 4)
		    case 3:return precpred(_ctx, 3)
		    case 4:return precpred(_ctx, 2)
		    default: return true
		}
	}


	public
	static let _serializedATN = ExpressionParserATN().jsonString

	public
	static let _ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}