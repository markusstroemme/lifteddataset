@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_27808:
  %stack_var_-17 = alloca i8, align 1
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
  store i8 %storemerge, ptr %stack_var_-17, align 1
  call void @anon1(ptr nonnull %stack_var_-17)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_27879, label %dec_label_pc_27874

dec_label_pc_27874:                               ; preds = %dec_label_pc_27808
  call void @__stack_chk_fail()
  br label %dec_label_pc_27879

dec_label_pc_27879:                               ; preds = %dec_label_pc_27874, %dec_label_pc_27808
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_27953:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i8
  %3 = add i8 %2, 1
  call void @printHexCharLine(i8 %3)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

