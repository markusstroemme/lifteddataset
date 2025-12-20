@global_var_82de0 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_13a63:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %7 = sext i1 %3 to i32
  %storemerge.in = xor i32 %6, %7
  %storemerge = trunc i32 %storemerge.in to i8
  %8 = icmp eq i8 %storemerge, 127
  br i1 %8, label %dec_label_pc_13b05, label %dec_label_pc_13ae7

dec_label_pc_13ae7:                               ; preds = %dec_label_pc_13a63
  %sext3 = mul i32 %storemerge.in, 16777216
  %sext = add i32 %sext3, 16777216
  %9 = udiv i32 %sext, 16777216
  %10 = trunc i32 %9 to i8
  call void @printHexCharLine(i8 %10)
  br label %dec_label_pc_13b14

dec_label_pc_13b05:                               ; preds = %dec_label_pc_13a63
  call void @printLine(ptr @global_var_82de0)
  br label %dec_label_pc_13b14

dec_label_pc_13b14:                               ; preds = %dec_label_pc_13b05, %dec_label_pc_13ae7
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_13b29, label %dec_label_pc_13b24

dec_label_pc_13b24:                               ; preds = %dec_label_pc_13b14
  call void @__stack_chk_fail()
  br label %dec_label_pc_13b29

dec_label_pc_13b29:                               ; preds = %dec_label_pc_13b24, %dec_label_pc_13b14
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

