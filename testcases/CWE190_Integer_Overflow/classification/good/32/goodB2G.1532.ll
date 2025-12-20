@global_var_67170 = external constant [54 x i8]
@global_var_70d7c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_c821:
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
  %11 = sub i16 0, %10
  %12 = icmp slt i16 %11, 0
  %13 = icmp eq i1 %12, false
  %.v = select i1 %13, i16 %11, i16 %10
  %14 = icmp ult i16 %.v, 182
  br i1 %14, label %dec_label_pc_c8c6, label %dec_label_pc_c8e2

dec_label_pc_c8c6:                                ; preds = %dec_label_pc_c821
  %15 = urem i32 %storemerge.in, 65536
  %narrow = mul i32 %storemerge.in, 65536
  %sext = mul i32 %narrow, %15
  %16 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %16)
  br label %dec_label_pc_c8f1

dec_label_pc_c8e2:                                ; preds = %dec_label_pc_c821
  call void @printLine(ptr @global_var_67170)
  br label %dec_label_pc_c8f1

dec_label_pc_c8f1:                                ; preds = %dec_label_pc_c8e2, %dec_label_pc_c8c6
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_c906, label %dec_label_pc_c901

dec_label_pc_c901:                                ; preds = %dec_label_pc_c8f1
  call void @__stack_chk_fail()
  br label %dec_label_pc_c906

dec_label_pc_c906:                                ; preds = %dec_label_pc_c901, %dec_label_pc_c8f1
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
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

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

