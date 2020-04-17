//
//  Evaluator.swift
//  ExpressionEvaluator
//
//  Created by Joseph Van Boxtel on 4/16/20.
//  Copyright © 2020 Joseph Van Boxtel. All rights reserved.
//

import Foundation
import Antlr4

class Evaluator: ExpressionBaseVisitor<Double> {
    override func visitS(_ ctx: ExpressionParser.SContext) -> Double {
        return visit(ctx.e()!) ?? 0
    }
    override func visitAdd(_ ctx: ExpressionParser.AddContext) -> Double {
        guard let leftTree = ctx.e(0), let left = visit(leftTree),
            let rightTree = ctx.e(1), let right = visit(rightTree) else {
            return 0
        }
        return left + right
    }
    override func visitSub(_ ctx: ExpressionParser.SubContext) -> Double {
        guard let leftTree = ctx.e(0), let left = visit(leftTree),
            let rightTree = ctx.e(1), let right = visit(rightTree) else {
            return 0
        }
        return left - right
    }
    override func visitMult(_ ctx: ExpressionParser.MultContext) -> Double {
        guard let leftTree = ctx.e(0), let left = visit(leftTree),
            let rightTree = ctx.e(1), let right = visit(rightTree) else {
            return 0
        }
        return left * right
    }
    override func visitDiv(_ ctx: ExpressionParser.DivContext) -> Double {
        guard let leftTree = ctx.e(0), let left = visit(leftTree),
            let rightTree = ctx.e(1), let right = visit(rightTree) else {
            return 0
        }
        return left / right
    }
    override func visitExp(_ ctx: ExpressionParser.ExpContext) -> Double {
        guard let leftTree = ctx.e(0), let left = visit(leftTree),
            let rightTree = ctx.e(1), let right = visit(rightTree) else {
            return 0
        }
        return pow(left, right)
    }
    override func visitAbs(_ ctx: ExpressionParser.AbsContext) -> Double {
        guard let tree = ctx.e(), let value = visit(tree) else {
            return 0
        }
        return abs(value)
    }
    override func visitParens(_ ctx: ExpressionParser.ParensContext) -> Double {
        guard let tree = ctx.e(), let value = visit(tree) else {
            return 0
        }
        return value
    }
    override func visitFloat(_ ctx: ExpressionParser.FloatContext) -> Double {
        return Double(ctx.getText()) ?? 0
    }
}
