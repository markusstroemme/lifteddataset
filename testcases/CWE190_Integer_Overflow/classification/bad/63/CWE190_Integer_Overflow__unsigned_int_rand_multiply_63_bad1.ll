@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_32494:
  %stack_var_-36 = alloca i32, align 4
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
  store i32 %storemerge.in, ptr %stack_var_-36, align 4
  call void @anon1(ptr nonnull %stack_var_-36)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_32521, label %dec_label_pc_3251c

dec_label_pc_3251c:                               ; preds = %dec_label_pc_32494
  call void @__stack_chk_fail()
  br label %dec_label_pc_32521

dec_label_pc_32521:                               ; preds = %dec_label_pc_3251c, %dec_label_pc_32494
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_32625:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_32656, label %dec_label_pc_32644

dec_label_pc_32644:                               ; preds = %dec_label_pc_32625
  %4 = mul i32 %2, 2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_32656

dec_label_pc_32656:                               ; preds = %dec_label_pc_32644, %dec_label_pc_32625
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

