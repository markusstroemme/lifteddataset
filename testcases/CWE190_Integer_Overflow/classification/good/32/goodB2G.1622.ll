@global_var_70040 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_ce58:
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
  br i1 %12, label %dec_label_pc_cf0d, label %dec_label_pc_cef8

dec_label_pc_cef8:                                ; preds = %dec_label_pc_ce58
  %13 = add i32 %storemerge.in, 1
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_cf1c

dec_label_pc_cf0d:                                ; preds = %dec_label_pc_ce58
  call void @printLine(ptr @global_var_70040)
  br label %dec_label_pc_cf1c

dec_label_pc_cf1c:                                ; preds = %dec_label_pc_cf0d, %dec_label_pc_cef8
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_cf31, label %dec_label_pc_cf2c

dec_label_pc_cf2c:                                ; preds = %dec_label_pc_cf1c
  call void @__stack_chk_fail()
  br label %dec_label_pc_cf31

dec_label_pc_cf31:                                ; preds = %dec_label_pc_cf2c, %dec_label_pc_cf1c
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

