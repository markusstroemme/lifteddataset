@global_var_6bbd8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c054 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2eb34:
  %0 = load i32, ptr @global_var_9c054, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_2ebd9, label %dec_label_pc_2eb9c

dec_label_pc_2eb9c:                               ; preds = %dec_label_pc_2eb34
  %3 = call i32 @rand()
  %4 = urem i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = call i32 @rand()
  %7 = mul i32 %6, 1073741824
  %8 = call i32 @rand()
  %9 = mul i32 %8, 32768
  %10 = xor i32 %9, %7
  %11 = call i32 @rand()
  %12 = xor i32 %10, %11
  %13 = sext i1 %5 to i32
  %storemerge.in = xor i32 %12, %13
  %14 = load i32, ptr @global_var_9c054, align 4
  %15 = icmp eq i32 %14, 5
  %16 = icmp eq i1 %15, false
  %17 = icmp eq i32 %storemerge.in, 0
  %or.cond = or i1 %16, %17
  br i1 %or.cond, label %dec_label_pc_2ebd9, label %dec_label_pc_2ebad

dec_label_pc_2ebad:                               ; preds = %dec_label_pc_2eb9c
  %18 = icmp ult i32 %storemerge.in, 2147483647
  br i1 %18, label %dec_label_pc_2ebb6, label %dec_label_pc_2ebca

dec_label_pc_2ebb6:                               ; preds = %dec_label_pc_2ebad
  %19 = mul i32 %storemerge.in, 2
  call void @printUnsignedLine(i32 %19)
  br label %dec_label_pc_2ebd9

dec_label_pc_2ebca:                               ; preds = %dec_label_pc_2ebad
  call void @printLine(ptr @global_var_6bbd8)
  br label %dec_label_pc_2ebd9

dec_label_pc_2ebd9:                               ; preds = %dec_label_pc_2eb34, %dec_label_pc_2ebca, %dec_label_pc_2ebb6, %dec_label_pc_2eb9c
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

declare i32 @puts(ptr) local_unnamed_addr

