# Introduction

## Strings

In Common Lisp strings are **vectors** of **characters**. They are written as characters surrounded by double quotes (e.g "Hello World!").

The `stringp` predicate will return true only if the given value is a string.

Strings can be split into sub-strings with the `subseq` function which takes the string a start index and optionally an end index. The indexing is zero-based.

```
(subseq "Hello World" 1 5)   ; => "ello"
(subseq "skip to the end" 5) ; => "to the end"
```

Strings can be compared for equality with `string=`. If case of the characters should be ignored then `string-equal` can be used.

```
(string= "macaroni" "macaroni")      ; => T
(string= "macaroni" "MACARONI")      ; => NIL
(string-equal "macaroni" "MACARONI") ; => T
```

Operations like upper-casing, lower-casing and capitalization of strings can be done with `string-upcase` `string-downcase` and `string-capitalize`.

```
(string-upcase "not too loud")                ; => "NOT TOO LOUD"
(string-downcase "YELL IT FROM THE ROOFTOPS") ; => "yell it from the rooftops"
(string-capitalize "practical COMMON LiSP")   ; => "Practical Common Lisp"
```

# Instructions

In this exercise you will write some code to help Larry the Lisp Alien parse and format log strings. These log strings come in from various systems and need to be processed so that their messages can be display on an informative monitoring display.

Log strings are in the form `"[<level>]: <message>"`. Level will be one of the following values: `info`, `warn`, or `ohno`.

# Task 1

## Extract the message

Define a function `log-message` which will take a log string and evaluate to the message it contains.

```
(log-message "[ohno]: whoops!") ; => "whoops!"
```

# Task 2

## Determine the severity

The level of the log string determines its severity.

- a level of `info` means a severity of `:everything-ok`
- a level of `warn` means a severity of `:getting-worried`
- a level of `ohno` means a severity of `:run-for-cover`

Define a function `log-severity` which will take a log string and evaluate to the correct severity.

```
(log-severity "[warn]: might want to get that checked") ; => :getting-worried
```

# Task 3

## Dealing with the vagaries of reality

Unfortunately sometimes the log strings are not always formatted correctly. Specifically the log level may be not all lower case as specified above. Modify `log-severity` to handle this.

```
(log-severity "[WaRn]: string case system failing") ; => :getting-worried
```

# Task 4

## Reformatting the log message according to log severity

Depending upon the severity the message should be modified in different ways:

- a severity of `:everything-ok` should have its message changed to all lower-case.
- a severity of `:getting-worried` should have its message changed to have each word capitalized.
- a severity of `:run-for-cover` should have its message changed to be all upper-case.

Define a function `log-format` that takes a log message and evaluates to a properly formatted message.

```
(log-format "[ohno]: whoops!") ; => WHOOPS!
```
