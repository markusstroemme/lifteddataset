@global_var_70d7c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_dd24:
  %stack_var_-34 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = call i32 @rand()
  %8 = xor i32 %7, %6
  %9 = sext i1 %3 to i32
  %storemerge.in = xor i32 %8, %9
  %10 = trunc i32 %storemerge.in to i16
  store i16 %10, ptr %stack_var_-34, align 2
  call void @anon1(ptr nonnull %stack_var_-34)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_dda7, label %dec_label_pc_dda2

dec_label_pc_dda2:                                ; preds = %dec_label_pc_dd24
  call void @__stack_chk_fail()
  br label %dec_label_pc_dda7

dec_label_pc_dda7:                                ; preds = %dec_label_pc_dda2, %dec_label_pc_dd24
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_de9f:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = mul i16 %2, %2
  %4 = sext i16 %3 to i32
  call void @printIntLine(i32 %4)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_54c32:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_70d7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

