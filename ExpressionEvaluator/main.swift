//
//  main.swift
//  ExpressionEvaluator
//
//  Created by Joseph Van Boxtel on 4/16/20.
//  Copyright © 2020 Joseph Van Boxtel. All rights reserved.
//

import Foundation
import Antlr4

func readLine(prompt: String) -> String? {
    print(prompt, terminator: "")
    return readLine()
}

while let line = readLine(prompt: ">") {
    let stream = ANTLRInputStream(line)
    let lexer = ExpressionLexer(stream)
    let tokens = CommonTokenStream(lexer)
    let parser = try! ExpressionParser(tokens)
    let tree = try! parser.s()

    print("\(Evaluator().visit(tree)!)")
}

