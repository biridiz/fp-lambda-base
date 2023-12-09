{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,240) ([8256,38300,2048,0,0,0,0,65440,19151,1024,22978,9,0,0,0,0,512,44257,4,0,0,0,16,33024,22128,8194,52752,74,0,8,0,32768,61440,26623,37,0,256,65344,40351,0,0,256,65533,598,0,0,0,0,32768,14400,299,2064,9575,512,44257,16388,39968,149,33800,4787,33024,22128,8194,52752,74,49668,2393,16512,11064,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,44257,4,0,1540,0,0,0,0,8192,52752,74,49668,2393,65152,11071,3,0,0,0,16,0,1024,6,0,0,0,0,65440,19183,1024,22978,9,0,4,2064,9575,512,44257,4,0,0,0,0,0,4096,24,0,0,0,128,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ExpList","Type","num","','","'+'","'-'","'*'","\"&&\"","\"||\"","'!'","\"==\"","\"!=\"","'>'","'<'","true","false","if","then","else","var","'\\\\'","\"->\"","'('","')'","'['","']'","'='","let","in","Bool","Num","':'","%eof"]
        bit_start = st Prelude.* 37
        bit_end = (st Prelude.+ 1) Prelude.* 37
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..36]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (7) = happyShift action_2
action_0 (14) = happyShift action_4
action_0 (19) = happyShift action_5
action_0 (20) = happyShift action_6
action_0 (21) = happyShift action_7
action_0 (24) = happyShift action_8
action_0 (25) = happyShift action_9
action_0 (27) = happyShift action_10
action_0 (29) = happyShift action_11
action_0 (32) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (7) = happyShift action_2
action_3 (9) = happyShift action_21
action_3 (10) = happyShift action_22
action_3 (11) = happyShift action_23
action_3 (12) = happyShift action_24
action_3 (13) = happyShift action_25
action_3 (14) = happyShift action_4
action_3 (15) = happyShift action_26
action_3 (16) = happyShift action_27
action_3 (17) = happyShift action_28
action_3 (18) = happyShift action_29
action_3 (19) = happyShift action_5
action_3 (20) = happyShift action_6
action_3 (21) = happyShift action_7
action_3 (24) = happyShift action_8
action_3 (25) = happyShift action_9
action_3 (27) = happyShift action_10
action_3 (29) = happyShift action_11
action_3 (32) = happyShift action_12
action_3 (37) = happyAccept
action_3 (4) = happyGoto action_20
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (7) = happyShift action_2
action_4 (14) = happyShift action_4
action_4 (19) = happyShift action_5
action_4 (20) = happyShift action_6
action_4 (21) = happyShift action_7
action_4 (24) = happyShift action_8
action_4 (25) = happyShift action_9
action_4 (27) = happyShift action_10
action_4 (29) = happyShift action_11
action_4 (32) = happyShift action_12
action_4 (4) = happyGoto action_19
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_2

action_6 _ = happyReduce_3

action_7 (7) = happyShift action_2
action_7 (14) = happyShift action_4
action_7 (19) = happyShift action_5
action_7 (20) = happyShift action_6
action_7 (21) = happyShift action_7
action_7 (24) = happyShift action_8
action_7 (25) = happyShift action_9
action_7 (27) = happyShift action_10
action_7 (29) = happyShift action_11
action_7 (32) = happyShift action_12
action_7 (4) = happyGoto action_18
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_15

action_9 (24) = happyShift action_17
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_2
action_10 (14) = happyShift action_4
action_10 (19) = happyShift action_5
action_10 (20) = happyShift action_6
action_10 (21) = happyShift action_7
action_10 (24) = happyShift action_8
action_10 (25) = happyShift action_9
action_10 (27) = happyShift action_10
action_10 (29) = happyShift action_11
action_10 (32) = happyShift action_12
action_10 (4) = happyGoto action_16
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (7) = happyShift action_2
action_11 (14) = happyShift action_4
action_11 (19) = happyShift action_5
action_11 (20) = happyShift action_6
action_11 (21) = happyShift action_7
action_11 (24) = happyShift action_8
action_11 (25) = happyShift action_9
action_11 (27) = happyShift action_10
action_11 (29) = happyShift action_11
action_11 (32) = happyShift action_12
action_11 (4) = happyGoto action_14
action_11 (5) = happyGoto action_15
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (24) = happyShift action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (31) = happyShift action_44
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (7) = happyShift action_2
action_14 (8) = happyShift action_43
action_14 (9) = happyShift action_21
action_14 (10) = happyShift action_22
action_14 (11) = happyShift action_23
action_14 (12) = happyShift action_24
action_14 (13) = happyShift action_25
action_14 (14) = happyShift action_4
action_14 (15) = happyShift action_26
action_14 (16) = happyShift action_27
action_14 (17) = happyShift action_28
action_14 (18) = happyShift action_29
action_14 (19) = happyShift action_5
action_14 (20) = happyShift action_6
action_14 (21) = happyShift action_7
action_14 (24) = happyShift action_8
action_14 (25) = happyShift action_9
action_14 (27) = happyShift action_10
action_14 (29) = happyShift action_11
action_14 (32) = happyShift action_12
action_14 (4) = happyGoto action_20
action_14 _ = happyReduce_21

action_15 (30) = happyShift action_42
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_2
action_16 (9) = happyShift action_21
action_16 (10) = happyShift action_22
action_16 (11) = happyShift action_23
action_16 (12) = happyShift action_24
action_16 (13) = happyShift action_25
action_16 (14) = happyShift action_4
action_16 (15) = happyShift action_26
action_16 (16) = happyShift action_27
action_16 (17) = happyShift action_28
action_16 (18) = happyShift action_29
action_16 (19) = happyShift action_5
action_16 (20) = happyShift action_6
action_16 (21) = happyShift action_7
action_16 (24) = happyShift action_8
action_16 (25) = happyShift action_9
action_16 (27) = happyShift action_10
action_16 (28) = happyShift action_41
action_16 (29) = happyShift action_11
action_16 (32) = happyShift action_12
action_16 (4) = happyGoto action_20
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (36) = happyShift action_40
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_2
action_18 (9) = happyShift action_21
action_18 (10) = happyShift action_22
action_18 (11) = happyShift action_23
action_18 (12) = happyShift action_24
action_18 (13) = happyShift action_25
action_18 (14) = happyShift action_4
action_18 (15) = happyShift action_26
action_18 (16) = happyShift action_27
action_18 (17) = happyShift action_28
action_18 (18) = happyShift action_29
action_18 (19) = happyShift action_5
action_18 (20) = happyShift action_6
action_18 (21) = happyShift action_7
action_18 (22) = happyShift action_39
action_18 (24) = happyShift action_8
action_18 (25) = happyShift action_9
action_18 (27) = happyShift action_10
action_18 (29) = happyShift action_11
action_18 (32) = happyShift action_12
action_18 (4) = happyGoto action_20
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (7) = happyShift action_2
action_19 (9) = happyShift action_21
action_19 (10) = happyShift action_22
action_19 (11) = happyShift action_23
action_19 (12) = happyShift action_24
action_19 (13) = happyShift action_25
action_19 (14) = happyShift action_4
action_19 (15) = happyShift action_26
action_19 (16) = happyShift action_27
action_19 (17) = happyShift action_28
action_19 (18) = happyShift action_29
action_19 (19) = happyShift action_5
action_19 (20) = happyShift action_6
action_19 (21) = happyShift action_7
action_19 (24) = happyShift action_8
action_19 (25) = happyShift action_9
action_19 (27) = happyShift action_10
action_19 (29) = happyShift action_11
action_19 (32) = happyShift action_12
action_19 (4) = happyGoto action_20
action_19 _ = happyReduce_9

action_20 (7) = happyShift action_2
action_20 (9) = happyShift action_21
action_20 (10) = happyShift action_22
action_20 (11) = happyShift action_23
action_20 (12) = happyShift action_24
action_20 (13) = happyShift action_25
action_20 (14) = happyShift action_4
action_20 (15) = happyShift action_26
action_20 (16) = happyShift action_27
action_20 (17) = happyShift action_28
action_20 (18) = happyShift action_29
action_20 (19) = happyShift action_5
action_20 (20) = happyShift action_6
action_20 (21) = happyShift action_7
action_20 (24) = happyShift action_8
action_20 (25) = happyShift action_9
action_20 (27) = happyShift action_10
action_20 (29) = happyShift action_11
action_20 (32) = happyShift action_12
action_20 (4) = happyGoto action_20
action_20 _ = happyReduce_17

action_21 (7) = happyShift action_2
action_21 (14) = happyShift action_4
action_21 (19) = happyShift action_5
action_21 (20) = happyShift action_6
action_21 (21) = happyShift action_7
action_21 (24) = happyShift action_8
action_21 (25) = happyShift action_9
action_21 (27) = happyShift action_10
action_21 (29) = happyShift action_11
action_21 (32) = happyShift action_12
action_21 (4) = happyGoto action_38
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_2
action_22 (14) = happyShift action_4
action_22 (19) = happyShift action_5
action_22 (20) = happyShift action_6
action_22 (21) = happyShift action_7
action_22 (24) = happyShift action_8
action_22 (25) = happyShift action_9
action_22 (27) = happyShift action_10
action_22 (29) = happyShift action_11
action_22 (32) = happyShift action_12
action_22 (4) = happyGoto action_37
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_2
action_23 (14) = happyShift action_4
action_23 (19) = happyShift action_5
action_23 (20) = happyShift action_6
action_23 (21) = happyShift action_7
action_23 (24) = happyShift action_8
action_23 (25) = happyShift action_9
action_23 (27) = happyShift action_10
action_23 (29) = happyShift action_11
action_23 (32) = happyShift action_12
action_23 (4) = happyGoto action_36
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_2
action_24 (14) = happyShift action_4
action_24 (19) = happyShift action_5
action_24 (20) = happyShift action_6
action_24 (21) = happyShift action_7
action_24 (24) = happyShift action_8
action_24 (25) = happyShift action_9
action_24 (27) = happyShift action_10
action_24 (29) = happyShift action_11
action_24 (32) = happyShift action_12
action_24 (4) = happyGoto action_35
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_2
action_25 (14) = happyShift action_4
action_25 (19) = happyShift action_5
action_25 (20) = happyShift action_6
action_25 (21) = happyShift action_7
action_25 (24) = happyShift action_8
action_25 (25) = happyShift action_9
action_25 (27) = happyShift action_10
action_25 (29) = happyShift action_11
action_25 (32) = happyShift action_12
action_25 (4) = happyGoto action_34
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_2
action_26 (14) = happyShift action_4
action_26 (19) = happyShift action_5
action_26 (20) = happyShift action_6
action_26 (21) = happyShift action_7
action_26 (24) = happyShift action_8
action_26 (25) = happyShift action_9
action_26 (27) = happyShift action_10
action_26 (29) = happyShift action_11
action_26 (32) = happyShift action_12
action_26 (4) = happyGoto action_33
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (7) = happyShift action_2
action_27 (14) = happyShift action_4
action_27 (19) = happyShift action_5
action_27 (20) = happyShift action_6
action_27 (21) = happyShift action_7
action_27 (24) = happyShift action_8
action_27 (25) = happyShift action_9
action_27 (27) = happyShift action_10
action_27 (29) = happyShift action_11
action_27 (32) = happyShift action_12
action_27 (4) = happyGoto action_32
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_2
action_28 (14) = happyShift action_4
action_28 (19) = happyShift action_5
action_28 (20) = happyShift action_6
action_28 (21) = happyShift action_7
action_28 (24) = happyShift action_8
action_28 (25) = happyShift action_9
action_28 (27) = happyShift action_10
action_28 (29) = happyShift action_11
action_28 (32) = happyShift action_12
action_28 (4) = happyGoto action_31
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (7) = happyShift action_2
action_29 (14) = happyShift action_4
action_29 (19) = happyShift action_5
action_29 (20) = happyShift action_6
action_29 (21) = happyShift action_7
action_29 (24) = happyShift action_8
action_29 (25) = happyShift action_9
action_29 (27) = happyShift action_10
action_29 (29) = happyShift action_11
action_29 (32) = happyShift action_12
action_29 (4) = happyGoto action_30
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (7) = happyShift action_2
action_30 (9) = happyShift action_21
action_30 (10) = happyShift action_22
action_30 (11) = happyShift action_23
action_30 (12) = happyShift action_24
action_30 (13) = happyShift action_25
action_30 (14) = happyShift action_4
action_30 (15) = happyShift action_26
action_30 (16) = happyShift action_27
action_30 (17) = happyShift action_28
action_30 (18) = happyShift action_29
action_30 (19) = happyShift action_5
action_30 (20) = happyShift action_6
action_30 (21) = happyShift action_7
action_30 (24) = happyShift action_8
action_30 (25) = happyShift action_9
action_30 (27) = happyShift action_10
action_30 (29) = happyShift action_11
action_30 (32) = happyShift action_12
action_30 (4) = happyGoto action_20
action_30 _ = happyReduce_13

action_31 (7) = happyShift action_2
action_31 (9) = happyShift action_21
action_31 (10) = happyShift action_22
action_31 (11) = happyShift action_23
action_31 (12) = happyShift action_24
action_31 (13) = happyShift action_25
action_31 (14) = happyShift action_4
action_31 (15) = happyShift action_26
action_31 (16) = happyShift action_27
action_31 (17) = happyShift action_28
action_31 (18) = happyShift action_29
action_31 (19) = happyShift action_5
action_31 (20) = happyShift action_6
action_31 (21) = happyShift action_7
action_31 (24) = happyShift action_8
action_31 (25) = happyShift action_9
action_31 (27) = happyShift action_10
action_31 (29) = happyShift action_11
action_31 (32) = happyShift action_12
action_31 (4) = happyGoto action_20
action_31 _ = happyReduce_12

action_32 (7) = happyShift action_2
action_32 (9) = happyShift action_21
action_32 (10) = happyShift action_22
action_32 (11) = happyShift action_23
action_32 (12) = happyShift action_24
action_32 (13) = happyShift action_25
action_32 (14) = happyShift action_4
action_32 (15) = happyShift action_26
action_32 (16) = happyShift action_27
action_32 (17) = happyShift action_28
action_32 (18) = happyShift action_29
action_32 (19) = happyShift action_5
action_32 (20) = happyShift action_6
action_32 (21) = happyShift action_7
action_32 (24) = happyShift action_8
action_32 (25) = happyShift action_9
action_32 (27) = happyShift action_10
action_32 (29) = happyShift action_11
action_32 (32) = happyShift action_12
action_32 (4) = happyGoto action_20
action_32 _ = happyReduce_11

action_33 (7) = happyShift action_2
action_33 (9) = happyShift action_21
action_33 (10) = happyShift action_22
action_33 (11) = happyShift action_23
action_33 (12) = happyShift action_24
action_33 (13) = happyShift action_25
action_33 (14) = happyShift action_4
action_33 (15) = happyShift action_26
action_33 (16) = happyShift action_27
action_33 (17) = happyShift action_28
action_33 (18) = happyShift action_29
action_33 (19) = happyShift action_5
action_33 (20) = happyShift action_6
action_33 (21) = happyShift action_7
action_33 (24) = happyShift action_8
action_33 (25) = happyShift action_9
action_33 (27) = happyShift action_10
action_33 (29) = happyShift action_11
action_33 (32) = happyShift action_12
action_33 (4) = happyGoto action_20
action_33 _ = happyReduce_10

action_34 (7) = happyShift action_2
action_34 (9) = happyShift action_21
action_34 (10) = happyShift action_22
action_34 (11) = happyShift action_23
action_34 (12) = happyShift action_24
action_34 (13) = happyShift action_25
action_34 (14) = happyShift action_4
action_34 (15) = happyShift action_26
action_34 (16) = happyShift action_27
action_34 (17) = happyShift action_28
action_34 (18) = happyShift action_29
action_34 (19) = happyShift action_5
action_34 (20) = happyShift action_6
action_34 (21) = happyShift action_7
action_34 (24) = happyShift action_8
action_34 (25) = happyShift action_9
action_34 (27) = happyShift action_10
action_34 (29) = happyShift action_11
action_34 (32) = happyShift action_12
action_34 (4) = happyGoto action_20
action_34 _ = happyReduce_8

action_35 (7) = happyShift action_2
action_35 (9) = happyShift action_21
action_35 (10) = happyShift action_22
action_35 (11) = happyShift action_23
action_35 (12) = happyShift action_24
action_35 (13) = happyShift action_25
action_35 (14) = happyShift action_4
action_35 (15) = happyShift action_26
action_35 (16) = happyShift action_27
action_35 (17) = happyShift action_28
action_35 (18) = happyShift action_29
action_35 (19) = happyShift action_5
action_35 (20) = happyShift action_6
action_35 (21) = happyShift action_7
action_35 (24) = happyShift action_8
action_35 (25) = happyShift action_9
action_35 (27) = happyShift action_10
action_35 (29) = happyShift action_11
action_35 (32) = happyShift action_12
action_35 (4) = happyGoto action_20
action_35 _ = happyReduce_7

action_36 (7) = happyShift action_2
action_36 (9) = happyShift action_21
action_36 (10) = happyShift action_22
action_36 (11) = happyShift action_23
action_36 (12) = happyShift action_24
action_36 (13) = happyShift action_25
action_36 (14) = happyShift action_4
action_36 (15) = happyShift action_26
action_36 (16) = happyShift action_27
action_36 (17) = happyShift action_28
action_36 (18) = happyShift action_29
action_36 (19) = happyShift action_5
action_36 (20) = happyShift action_6
action_36 (21) = happyShift action_7
action_36 (24) = happyShift action_8
action_36 (25) = happyShift action_9
action_36 (27) = happyShift action_10
action_36 (29) = happyShift action_11
action_36 (32) = happyShift action_12
action_36 (4) = happyGoto action_20
action_36 _ = happyReduce_6

action_37 (7) = happyShift action_2
action_37 (9) = happyShift action_21
action_37 (10) = happyShift action_22
action_37 (11) = happyShift action_23
action_37 (12) = happyShift action_24
action_37 (13) = happyShift action_25
action_37 (14) = happyShift action_4
action_37 (15) = happyShift action_26
action_37 (16) = happyShift action_27
action_37 (17) = happyShift action_28
action_37 (18) = happyShift action_29
action_37 (19) = happyShift action_5
action_37 (20) = happyShift action_6
action_37 (21) = happyShift action_7
action_37 (24) = happyShift action_8
action_37 (25) = happyShift action_9
action_37 (27) = happyShift action_10
action_37 (29) = happyShift action_11
action_37 (32) = happyShift action_12
action_37 (4) = happyGoto action_20
action_37 _ = happyReduce_5

action_38 (7) = happyShift action_2
action_38 (10) = happyShift action_22
action_38 (11) = happyShift action_23
action_38 (12) = happyShift action_24
action_38 (13) = happyShift action_25
action_38 (14) = happyShift action_4
action_38 (15) = happyShift action_26
action_38 (16) = happyShift action_27
action_38 (17) = happyShift action_28
action_38 (18) = happyShift action_29
action_38 (19) = happyShift action_5
action_38 (20) = happyShift action_6
action_38 (21) = happyShift action_7
action_38 (24) = happyShift action_8
action_38 (25) = happyShift action_9
action_38 (27) = happyShift action_10
action_38 (29) = happyShift action_11
action_38 (32) = happyShift action_12
action_38 (4) = happyGoto action_20
action_38 _ = happyReduce_4

action_39 (7) = happyShift action_2
action_39 (14) = happyShift action_4
action_39 (19) = happyShift action_5
action_39 (20) = happyShift action_6
action_39 (21) = happyShift action_7
action_39 (24) = happyShift action_8
action_39 (25) = happyShift action_9
action_39 (27) = happyShift action_10
action_39 (29) = happyShift action_11
action_39 (32) = happyShift action_12
action_39 (4) = happyGoto action_51
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (27) = happyShift action_48
action_40 (34) = happyShift action_49
action_40 (35) = happyShift action_50
action_40 (6) = happyGoto action_47
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_18

action_42 _ = happyReduce_20

action_43 (7) = happyShift action_2
action_43 (14) = happyShift action_4
action_43 (19) = happyShift action_5
action_43 (20) = happyShift action_6
action_43 (21) = happyShift action_7
action_43 (24) = happyShift action_8
action_43 (25) = happyShift action_9
action_43 (27) = happyShift action_10
action_43 (29) = happyShift action_11
action_43 (32) = happyShift action_12
action_43 (4) = happyGoto action_14
action_43 (5) = happyGoto action_46
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (7) = happyShift action_2
action_44 (14) = happyShift action_4
action_44 (19) = happyShift action_5
action_44 (20) = happyShift action_6
action_44 (21) = happyShift action_7
action_44 (24) = happyShift action_8
action_44 (25) = happyShift action_9
action_44 (27) = happyShift action_10
action_44 (29) = happyShift action_11
action_44 (32) = happyShift action_12
action_44 (4) = happyGoto action_45
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (7) = happyShift action_2
action_45 (9) = happyShift action_21
action_45 (10) = happyShift action_22
action_45 (11) = happyShift action_23
action_45 (12) = happyShift action_24
action_45 (13) = happyShift action_25
action_45 (14) = happyShift action_4
action_45 (15) = happyShift action_26
action_45 (16) = happyShift action_27
action_45 (17) = happyShift action_28
action_45 (18) = happyShift action_29
action_45 (19) = happyShift action_5
action_45 (20) = happyShift action_6
action_45 (21) = happyShift action_7
action_45 (24) = happyShift action_8
action_45 (25) = happyShift action_9
action_45 (27) = happyShift action_10
action_45 (29) = happyShift action_11
action_45 (32) = happyShift action_12
action_45 (33) = happyShift action_55
action_45 (4) = happyGoto action_20
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_22

action_47 (26) = happyShift action_54
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (27) = happyShift action_48
action_48 (34) = happyShift action_49
action_48 (35) = happyShift action_50
action_48 (6) = happyGoto action_53
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_23

action_50 _ = happyReduce_24

action_51 (7) = happyShift action_2
action_51 (9) = happyShift action_21
action_51 (10) = happyShift action_22
action_51 (11) = happyShift action_23
action_51 (12) = happyShift action_24
action_51 (13) = happyShift action_25
action_51 (14) = happyShift action_4
action_51 (15) = happyShift action_26
action_51 (16) = happyShift action_27
action_51 (17) = happyShift action_28
action_51 (18) = happyShift action_29
action_51 (19) = happyShift action_5
action_51 (20) = happyShift action_6
action_51 (21) = happyShift action_7
action_51 (23) = happyShift action_52
action_51 (24) = happyShift action_8
action_51 (25) = happyShift action_9
action_51 (27) = happyShift action_10
action_51 (29) = happyShift action_11
action_51 (32) = happyShift action_12
action_51 (4) = happyGoto action_20
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (7) = happyShift action_2
action_52 (14) = happyShift action_4
action_52 (19) = happyShift action_5
action_52 (20) = happyShift action_6
action_52 (21) = happyShift action_7
action_52 (24) = happyShift action_8
action_52 (25) = happyShift action_9
action_52 (27) = happyShift action_10
action_52 (29) = happyShift action_11
action_52 (32) = happyShift action_12
action_52 (4) = happyGoto action_59
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (26) = happyShift action_58
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (7) = happyShift action_2
action_54 (14) = happyShift action_4
action_54 (19) = happyShift action_5
action_54 (20) = happyShift action_6
action_54 (21) = happyShift action_7
action_54 (24) = happyShift action_8
action_54 (25) = happyShift action_9
action_54 (27) = happyShift action_10
action_54 (29) = happyShift action_11
action_54 (32) = happyShift action_12
action_54 (4) = happyGoto action_57
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (7) = happyShift action_2
action_55 (14) = happyShift action_4
action_55 (19) = happyShift action_5
action_55 (20) = happyShift action_6
action_55 (21) = happyShift action_7
action_55 (24) = happyShift action_8
action_55 (25) = happyShift action_9
action_55 (27) = happyShift action_10
action_55 (29) = happyShift action_11
action_55 (32) = happyShift action_12
action_55 (4) = happyGoto action_56
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (7) = happyShift action_2
action_56 (9) = happyShift action_21
action_56 (10) = happyShift action_22
action_56 (11) = happyShift action_23
action_56 (12) = happyShift action_24
action_56 (13) = happyShift action_25
action_56 (14) = happyShift action_4
action_56 (15) = happyShift action_26
action_56 (16) = happyShift action_27
action_56 (17) = happyShift action_28
action_56 (18) = happyShift action_29
action_56 (19) = happyShift action_5
action_56 (20) = happyShift action_6
action_56 (21) = happyShift action_7
action_56 (24) = happyShift action_8
action_56 (25) = happyShift action_9
action_56 (27) = happyShift action_10
action_56 (29) = happyShift action_11
action_56 (32) = happyShift action_12
action_56 (4) = happyGoto action_20
action_56 _ = happyReduce_19

action_57 (7) = happyShift action_2
action_57 (9) = happyShift action_21
action_57 (10) = happyShift action_22
action_57 (11) = happyShift action_23
action_57 (12) = happyShift action_24
action_57 (13) = happyShift action_25
action_57 (14) = happyShift action_4
action_57 (15) = happyShift action_26
action_57 (16) = happyShift action_27
action_57 (17) = happyShift action_28
action_57 (18) = happyShift action_29
action_57 (19) = happyShift action_5
action_57 (20) = happyShift action_6
action_57 (21) = happyShift action_7
action_57 (24) = happyShift action_8
action_57 (25) = happyShift action_9
action_57 (27) = happyShift action_10
action_57 (29) = happyShift action_11
action_57 (32) = happyShift action_12
action_57 (4) = happyGoto action_20
action_57 _ = happyReduce_16

action_58 (27) = happyShift action_48
action_58 (34) = happyShift action_49
action_58 (35) = happyShift action_50
action_58 (6) = happyGoto action_60
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (7) = happyShift action_2
action_59 (9) = happyShift action_21
action_59 (10) = happyShift action_22
action_59 (11) = happyShift action_23
action_59 (12) = happyShift action_24
action_59 (13) = happyShift action_25
action_59 (14) = happyShift action_4
action_59 (15) = happyShift action_26
action_59 (16) = happyShift action_27
action_59 (17) = happyShift action_28
action_59 (18) = happyShift action_29
action_59 (19) = happyShift action_5
action_59 (20) = happyShift action_6
action_59 (21) = happyShift action_7
action_59 (24) = happyShift action_8
action_59 (25) = happyShift action_9
action_59 (27) = happyShift action_10
action_59 (29) = happyShift action_11
action_59 (32) = happyShift action_12
action_59 (4) = happyGoto action_20
action_59 _ = happyReduce_14

action_60 (28) = happyShift action_61
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_25

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Dif happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Big happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Small happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happyReduce 6 4 happyReduction_14
happyReduction_14 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_1  4 happyReduction_15
happyReduction_15 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happyReduce 6 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 6 4 happyReduction_19
happyReduction_19 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ExprList happy_var_2
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  5 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  6 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn6
		 (TBool
	)

happyReduce_24 = happySpecReduce_1  6 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn6
		 (TNum
	)

happyReduce_25 = happyReduce 5 6 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 7;
	TokenComma -> cont 8;
	TokenAdd -> cont 9;
	TokenSub -> cont 10;
	TokenMul -> cont 11;
	TokenAnd -> cont 12;
	TokenOr -> cont 13;
	TokenNot -> cont 14;
	TokenBoolEq -> cont 15;
	TokenBoolDif -> cont 16;
	TokenBig -> cont 17;
	TokenSmall -> cont 18;
	TokenTrue -> cont 19;
	TokenFalse -> cont 20;
	TokenIf -> cont 21;
	TokenThen -> cont 22;
	TokenElse -> cont 23;
	TokenVar happy_dollar_dollar -> cont 24;
	TokenLam -> cont 25;
	TokenArrow -> cont 26;
	TokenLParen -> cont 27;
	TokenRParen -> cont 28;
	TokenLBracket -> cont 29;
	TokenRBracket -> cont 30;
	TokenEq -> cont 31;
	TokenLet -> cont 32;
	TokenIn -> cont 33;
	TokenBoolean -> cont 34;
	TokenNumber -> cont 35;
	TokenColon -> cont 36;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 37 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parserError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parserError :: [Token] -> a 
parserError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
