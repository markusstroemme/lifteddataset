@global_var_6c960 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3659d:
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
  %storemerge.in.off = add i32 %storemerge.in, 65534
  %12 = icmp ugt i32 %storemerge.in.off, 131068
  br i1 %12, label %dec_label_pc_3665d, label %dec_label_pc_36648

dec_label_pc_36648:                               ; preds = %dec_label_pc_3659d
  %13 = mul i32 %storemerge.in, %storemerge.in
  call void @printUnsignedLine(i32 %13)
  br label %dec_label_pc_3666c

dec_label_pc_3665d:                               ; preds = %dec_label_pc_3659d
  call void @printLine(ptr @global_var_6c960)
  br label %dec_label_pc_3666c

dec_label_pc_3666c:                               ; preds = %dec_label_pc_3665d, %dec_label_pc_36648
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_36681, label %dec_label_pc_3667c

dec_label_pc_3667c:                               ; preds = %dec_label_pc_3666c
  call void @__stack_chk_fail()
  br label %dec_label_pc_36681

dec_label_pc_36681:                               ; preds = %dec_label_pc_3667c, %dec_label_pc_3666c
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

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

