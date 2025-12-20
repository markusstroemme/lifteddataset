@global_var_84b80 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_23ab7:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, 1152921504606846976
  %7 = call i32 @rand()
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, 35184372088832
  %10 = call i32 @rand()
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 1073741824
  %13 = call i32 @rand()
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 32768
  %16 = call i32 @rand()
  %17 = sext i32 %16 to i64
  %18 = sext i1 %3 to i64
  %19 = xor i64 %6, %18
  %20 = xor i64 %19, %9
  %21 = xor i64 %20, %12
  %22 = xor i64 %21, %15
  %storemerge = xor i64 %22, %17
  %23 = icmp eq i64 %storemerge, 9223372036854775807
  br i1 %23, label %dec_label_pc_23bd0, label %dec_label_pc_23bb5

dec_label_pc_23bb5:                               ; preds = %dec_label_pc_23ab7
  %24 = add i64 %storemerge, 1
  call void @printLongLongLine(i64 %24)
  br label %dec_label_pc_23bdf

dec_label_pc_23bd0:                               ; preds = %dec_label_pc_23ab7
  call void @printLine(ptr @global_var_84b80)
  br label %dec_label_pc_23bdf

dec_label_pc_23bdf:                               ; preds = %dec_label_pc_23bd0, %dec_label_pc_23bb5
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_23bf4, label %dec_label_pc_23bef

dec_label_pc_23bef:                               ; preds = %dec_label_pc_23bdf
  call void @__stack_chk_fail()
  br label %dec_label_pc_23bf4

dec_label_pc_23bf4:                               ; preds = %dec_label_pc_23bef, %dec_label_pc_23bdf
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

