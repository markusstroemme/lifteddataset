@global_var_88960 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4bc03:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge.in = xor i32 %10, %11
  %12 = icmp eq i32 %storemerge.in, 2147483647
  br i1 %12, label %dec_label_pc_4bcb9, label %dec_label_pc_4bca3

dec_label_pc_4bca3:                               ; preds = %dec_label_pc_4bc03
  %13 = add i32 %storemerge.in, 1
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_4bcc8

dec_label_pc_4bcb9:                               ; preds = %dec_label_pc_4bc03
  call void @printLine(ptr @global_var_88960)
  br label %dec_label_pc_4bcc8

dec_label_pc_4bcc8:                               ; preds = %dec_label_pc_4bcb9, %dec_label_pc_4bca3
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_4bcdd, label %dec_label_pc_4bcd8

dec_label_pc_4bcd8:                               ; preds = %dec_label_pc_4bcc8
  call void @__stack_chk_fail()
  br label %dec_label_pc_4bcdd

dec_label_pc_4bcdd:                               ; preds = %dec_label_pc_4bcd8, %dec_label_pc_4bcc8
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

