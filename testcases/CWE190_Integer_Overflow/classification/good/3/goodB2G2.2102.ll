@global_var_70468 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_f33b:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  %11 = icmp slt i32 %storemerge.in, 1
  br i1 %11, label %dec_label_pc_f3ca, label %dec_label_pc_f39e

dec_label_pc_f39e:                                ; preds = %dec_label_pc_f33b
  %12 = icmp sgt i32 %storemerge.in, 1073741822
  br i1 %12, label %dec_label_pc_f3bb, label %dec_label_pc_f3a7

dec_label_pc_f3a7:                                ; preds = %dec_label_pc_f39e
  %13 = mul i32 %storemerge.in, 2
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_f3ca

dec_label_pc_f3bb:                                ; preds = %dec_label_pc_f39e
  call void @printLine(ptr @global_var_70468)
  br label %dec_label_pc_f3ca

dec_label_pc_f3ca:                                ; preds = %dec_label_pc_f3bb, %dec_label_pc_f3a7, %dec_label_pc_f33b
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

declare i32 @puts(ptr) local_unnamed_addr

