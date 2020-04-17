// Generated from /Users/josephvanboxtel/Documents/School/WSUVancouver/spring19/cs355-programming-languages/hw/hw6_antlr/ExpressionEvaluator/Expression.g4 by ANTLR 4.8
import Antlr4

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link ExpressionParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
open class ExpressionVisitor<T>: ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link ExpressionParser#s}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitS(_ ctx: ExpressionParser.SContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code Div}
	 * labeled alternative in {@link ExpressionParser#e}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitDiv(_ ctx: ExpressionParser.DivContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code Add}
	 * labeled alternative in {@link ExpressionParser#e}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitAdd(_ ctx: ExpressionParser.AddContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code Float}
	 * labeled alternative in {@link ExpressionParser#e}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitFloat(_ ctx: ExpressionParser.FloatContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code Sub}
	 * labeled alternative in {@link ExpressionParser#e}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitSub(_ ctx: ExpressionParser.SubContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code Abs}
	 * labeled alternative in {@link ExpressionParser#e}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitAbs(_ ctx: ExpressionParser.AbsContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code Mult}
	 * labeled alternative in {@link ExpressionParser#e}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitMult(_ ctx: ExpressionParser.MultContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code Parens}
	 * labeled alternative in {@link ExpressionParser#e}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitParens(_ ctx: ExpressionParser.ParensContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code Exp}
	 * labeled alternative in {@link ExpressionParser#e}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitExp(_ ctx: ExpressionParser.ExpContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

}