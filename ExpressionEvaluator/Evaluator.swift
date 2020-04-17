//
//  Evaluator.swift
//  ExpressionEvaluator
//
//  Created by Joseph Van Boxtel on 4/16/20.
//  Copyright © 2020 Joseph Van Boxtel. All rights reserved.
//

import Foundation
import Antlr4

class Evaluator: ExpressionBaseVisitor<Int> {
    override func visitS(_ ctx: ExpressionParser.SContext) -> Int {
        return visit(ctx.e()!) ?? 0
    }
    override func visitAdd(_ ctx: ExpressionParser.AddContext) -> Int {
        guard let leftTree = ctx.e(0), let left = visit(leftTree),
            let rightTree = ctx.e(1), let right = visit(rightTree) else {
            return 0
        }
        return left + right
    }
    override func visitSub(_ ctx: ExpressionParser.SubContext) -> Int {
        guard let leftTree = ctx.e(0), let left = visit(leftTree),
            let rightTree = ctx.e(1), let right = visit(rightTree) else {
            return 0
        }
        return left - right
    }
    override func visitMult(_ ctx: ExpressionParser.MultContext) -> Int {
        guard let leftTree = ctx.e(0), let left = visit(leftTree),
            let rightTree = ctx.e(1), let right = visit(rightTree) else {
            return 0
        }
        return left * right
    }
    override func visitDiv(_ ctx: ExpressionParser.DivContext) -> Int {
        guard let leftTree = ctx.e(0), let left = visit(leftTree),
            let rightTree = ctx.e(1), let right = visit(rightTree) else {
            return 0
        }
        return left / right
    }
    override func visitExp(_ ctx: ExpressionParser.ExpContext) -> Int {
        guard let leftTree = ctx.e(0), let left = visit(leftTree),
            let rightTree = ctx.e(1), let right = visit(rightTree) else {
            return 0
        }
        /// Not actually accurate.
        return Int(pow(Double(left), Double(right)))
    }
    override func visitAbs(_ ctx: ExpressionParser.AbsContext) -> Int {
        guard let tree = ctx.e(), let value = visit(tree) else {
            return 0
        }
        return abs(value)
    }
    override func visitParens(_ ctx: ExpressionParser.ParensContext) -> Int {
        guard let tree = ctx.e(), let value = visit(tree) else {
            return 0
        }
        return value
    }
    override func visitInt(_ ctx: ExpressionParser.IntContext) -> Int {
        return Int(ctx.getText()) ?? 0
    }
}
